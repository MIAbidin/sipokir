<?php
require 'koneksi.php';

$year = intval($_GET['year']);

$sql = "SELECT MONTH(tanggal_usul) AS month, COUNT(*) AS total FROM pokir WHERE YEAR(tanggal_usul) = $year GROUP BY month ORDER BY month";
$result = $conn->query($sql);

$data = [];
while ($row = $result->fetch_assoc()) {
    $data['labels'][] = date('F', mktime(0, 0, 0, $row['month'], 10));
    $data['values'][] = $row['total'];
}

$conn->close();

echo json_encode($data);
?>
