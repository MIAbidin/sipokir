<?php
require 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
    $stmt->bind_param("ss", $username, $hashed_password);

    if ($stmt->execute()) {
        $_SESSION['notification'] = [
            'message' => "User berhasil ditambahkan.",
            'type' => 'success'
        ];
    } else {
        $_SESSION['notification'] = [
            'message' => "Gagal menambahkan user.",
            'type' => 'danger'
        ];
    }

    $stmt->close();
    $conn->close();

    header('Location: manage_users.php');
    exit();
}
?>
