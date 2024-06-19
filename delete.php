<?php
session_start();
require 'koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $stmt = $conn->prepare("DELETE FROM pokir WHERE id=?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        $_SESSION['notification'] = [
            'message' => "Data berhasil dihapus.",
            'type' => 'success'
        ];
    } else {
        $_SESSION['notification'] = [
            'message' => "Terjadi kesalahan saat menghapus data: " . $stmt->error,
            'type' => 'danger'
        ];
    }

    $stmt->close();
    $conn->close();

    header("Location: upload_data.php");
    exit();
} else {
    $_SESSION['notification'] = [
        'message' => "ID tidak ditemukan.",
        'type' => 'danger'
    ];
    header("Location: upload_data.php");
    exit();
}
?>
