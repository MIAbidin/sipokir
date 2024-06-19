<?php
session_start();
require 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (!empty($password)) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
        $stmt = $conn->prepare("UPDATE users SET username = ?, password = ? WHERE id = ?");
        $stmt->bind_param("ssi", $username, $hashed_password, $id);
    } else {
        $stmt = $conn->prepare("UPDATE users SET username = ? WHERE id = ?");
        $stmt->bind_param("si", $username, $id);
    }

    if ($stmt->execute()) {
        $_SESSION['notification'] = [
            'message' => "User berhasil diupdate....",
            'type' => 'success'
        ];
    } else {
        $_SESSION['notification'] = [
            'message' => "Gagal mengupdate user.",
            'type' => 'danger'
        ];
    }

    $stmt->close();
    $conn->close();

    header('Location: manage_users.php');
    exit();
}
