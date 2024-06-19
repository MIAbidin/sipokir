<?php
session_start();
require 'koneksi.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];

    $stmt = $conn->prepare("DELETE FROM users WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        $_SESSION['notification'] = [
            'message' => "User berhasil dihapus.",
            'type' => 'success'
        ];
    } else {
        $_SESSION['notification'] = [
            'message' => "User gagal dihapus.",
            'type' => 'danger'
        ];
    }

    $stmt->close();
    $conn->close();

    header('Location: manage_users.php');
    exit();
}
?>
