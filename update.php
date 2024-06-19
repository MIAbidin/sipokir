<?php
session_start();
require 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data and sanitize it
    $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
    $id_usulan = filter_input(INPUT_POST, 'id_usulan', FILTER_SANITIZE_STRING);
    $tanggal_usul = filter_input(INPUT_POST, 'tanggal_usul', FILTER_SANITIZE_STRING);
    $pengusul = filter_input(INPUT_POST, 'pengusul', FILTER_SANITIZE_STRING);
    $usulan = filter_input(INPUT_POST, 'usulan', FILTER_SANITIZE_STRING);
    $masalah = filter_input(INPUT_POST, 'masalah', FILTER_SANITIZE_STRING);
    $alamat_lokasi = filter_input(INPUT_POST, 'alamat_lokasi', FILTER_SANITIZE_STRING);
    $usulan_ke = filter_input(INPUT_POST, 'usulan_ke', FILTER_SANITIZE_STRING);
    $opd_tujuan_awal = filter_input(INPUT_POST, 'opd_tujuan_awal', FILTER_SANITIZE_STRING);
    $opd_tujuan_akhir = filter_input(INPUT_POST, 'opd_tujuan_akhir', FILTER_SANITIZE_STRING);
    $status = filter_input(INPUT_POST, 'status', FILTER_SANITIZE_STRING);
    $catatan = filter_input(INPUT_POST, 'catatan', FILTER_SANITIZE_STRING);
    $rekomendasi_sekwan = filter_input(INPUT_POST, 'rekomendasi_sekwan', FILTER_SANITIZE_STRING);
    $rekomendasi_mitra = filter_input(INPUT_POST, 'rekomendasi_mitra', FILTER_SANITIZE_STRING);
    $rekomendasi_skpd = filter_input(INPUT_POST, 'rekomendasi_skpd', FILTER_SANITIZE_STRING);
    $rekomendasi_tapd = filter_input(INPUT_POST, 'rekomendasi_tapd', FILTER_SANITIZE_STRING);
    $volume = filter_input(INPUT_POST, 'volume', FILTER_SANITIZE_STRING);
    $satuan = filter_input(INPUT_POST, 'satuan', FILTER_SANITIZE_STRING);
    $anggaran = filter_input(INPUT_POST, 'anggaran', FILTER_SANITIZE_STRING);
    $jenis_belanja = filter_input(INPUT_POST, 'jenis_belanja', FILTER_SANITIZE_STRING);
    $sub_kegiatan = filter_input(INPUT_POST, 'sub_kegiatan', FILTER_SANITIZE_STRING);

$stmt = $conn->prepare("UPDATE pokir SET id_usulan=?, tanggal_usul=?, pengusul=?, usulan=?, masalah=?, alamat_lokasi=?, usulan_ke=?, opd_tujuan_awal=?, opd_tujuan_akhir=?, status=?, catatan=?, rekomendasi_sekwan=?, rekomendasi_mitra=?, rekomendasi_skpd=?, rekomendasi_tapd=?, volume=?, satuan=?, anggaran=?, jenis_belanja=?, sub_kegiatan=?, updatedAt=NOW() WHERE id=?");

$stmt->bind_param("ssssssssssssssssssssi", 
              $id_usulan, $tanggal_usul, $pengusul, $usulan, $masalah, 
              $alamat_lokasi, $usulan_ke, $opd_tujuan_awal, $opd_tujuan_akhir, 
              $status, $catatan, $rekomendasi_sekwan, $rekomendasi_mitra, 
              $rekomendasi_skpd, $rekomendasi_tapd, $volume, $satuan, 
              $anggaran, $jenis_belanja, $sub_kegiatan, $id);

    if ($stmt->execute()) {
        $_SESSION['success_message'] = "Data successfully updated.";
    } else {
        $_SESSION['error_message'] = "Error updating data: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();

    header("Location: upload_data.php");
    exit();
} else {
    $_SESSION['error_message'] = "Invalid request.";
    header("Location: upload_data.php");
    exit();
}
?>