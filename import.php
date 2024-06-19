<?php
session_start();
require 'vendor/autoload.php';
require 'koneksi.php';

use PhpOffice\PhpSpreadsheet\IOFactory;

$requiredColumns = ['id_usulan', 'tanggal_usul', 'pengusul', 'usulan', 'masalah', 'alamat_lokasi', 'usulan_ke', 'opd_tujuan_awal', 'opd_tujuan_akhir', 'status', 'catatan', 'rekomendasi_sekwan', 'rekomendasi_mitra', 'rekomendasi_skpd', 'rekomendasi_tapd', 'volume', 'satuan', 'anggaran', 'jenis_belanja', 'sub_kegiatan'];

function excelDateToDateTime($excelDate) {
    return \PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject($excelDate)->format('Y-m-d');
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['file']) && $_FILES['file']['size'] > 0) {
    $file = $_FILES['file']['tmp_name'];

    $spreadsheet = IOFactory::load($file);
    $worksheet = $spreadsheet->getActiveSheet();

    $headerRow = $worksheet->getRowIterator()->current();
    $headerCells = $headerRow->getCellIterator();
    $headerCells->setIterateOnlyExistingCells(false);

    $columnMap = [];
    foreach ($headerCells as $cell) {
        $columnName = strtolower(trim($cell->getValue()));
        $columnName = str_replace(' ', '_', $columnName);
        $columnMap[$cell->getColumn()] = $columnName;
    }

    $missingColumns = array_diff($requiredColumns, array_values($columnMap));
    if (!empty($missingColumns)) {
        $errorMessage = "Required columns missing in Excel file: '" . implode("', '", $missingColumns) . "'";
        $_SESSION['error_message'] = $errorMessage;
        header("Location: upload_data.php");
        exit();
    }

    $rowCount = 0;
    $errorMessages = [];
    $dataRows = [];

    foreach ($worksheet->getRowIterator() as $row) {
        if ($row->getRowIndex() == 1) {
            continue;
        }

        $cellIterator = $row->getCellIterator();
        $cellIterator->setIterateOnlyExistingCells(false);

        $data = [];
        $nullColumns = [];
        foreach ($columnMap as $column => $columnName) {
            $cell = $worksheet->getCell($column . $row->getRowIndex());
            $value = $cell ? $cell->getValue() : null;
            if ($value === null || $value === '') {
                $nullColumns[] = $columnName;
                $value = '';
            }
            if ($columnName == 'tanggal_usul' && is_numeric($value)) {
                $value = excelDateToDateTime($value);
            }
            $data[$columnName] = $value;
        }

        if (!empty($nullColumns)) {
            $errorMessages[] = "Columns '" . implode(", ", $nullColumns) . "' cannot be null or empty (Row: " . $row->getRowIndex() . ")";
        }

        $data['createdAt'] = date('Y-m-d H:i:s');
        $data['updatedAt'] = date('Y-m-d H:i:s');

        $dataRows[] = $data;
    }

    if (!empty($errorMessages)) {
        $_SESSION['error_message'] = "Data tidak valid. Semua data tidak dimasukkan ke database.<br>" . implode("<br>", $errorMessages);
        header("Location: upload_data.php");
        exit();
    }

    foreach ($dataRows as $data) {
        $sql = "INSERT INTO pokir (".implode(",", array_keys($data)).") VALUES (".implode(",", array_fill(0, count($data), '?')).")";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param(
            str_repeat('s', count($data)), 
            ...array_values($data)
        );

        if ($stmt->execute()) {
            $rowCount++;
        } else {
            $errorMessages[] = "Error inserting data: " . $stmt->error;
        }

        $stmt->close();
    }

    $conn->close();

    $_SESSION['success_message'] = "File successfully imported! $rowCount rows processed.";
    header("Location: upload_data.php");
    exit();

} else {
    $_SESSION['error_message'] = "No file uploaded.";
    header("Location: upload_data.php");
    exit();
}
?>
