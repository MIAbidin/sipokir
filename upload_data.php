<?php
session_start();


$title = "Upload & Data";
ob_start();


?>

<h1 class="h3 mb-2 text-gray-800">Upload Excel File</h1>
<p class="mb-4">Upload an Excel file to import data into the database.</p>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Upload Form</h6>
    </div>
    <div class="card-body">
        <p class="mb-3">Harap isinya sesuai dengan format yang ada di <a href="./template.xlsx" download>template</a> file Excel yang dapat didownload.</p>

        <form action="import.php" method="post" enctype="multipart/form-data">
            <label for="file">Choose Excel file:</label>
            <input type="file" name="file" id="file" accept=".xls,.xlsx" class="form-control mb-3">
            <button type="submit" class="btn btn-primary">Upload</button>
        </form>

        <?php
        if (isset($_SESSION['success_message'])) {
            echo "<p class='text-success font-weight-bold mt-3'>" . $_SESSION['success_message'] . "</p>";
            unset($_SESSION['success_message']);
        }
        if (isset($_SESSION['error_message'])) {
            echo "<p class='text-danger font-weight-bold mt-3'>" . $_SESSION['error_message'] . "</p>";
            unset($_SESSION['error_message']);
        }
        ?>
    </div>
</div>


<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data from Database</h6>
    </div>
    <div class="card shadow mb-4">
    </div>


    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>ID Usulan</th>
                        <th>Tanggal Usul</th>
                        <th>Pengusul</th>
                        <th>Usulan</th>
                        <th>Masalah</th>
                        <th>Alamat Lokasi</th>
                        <th>Usulan Ke</th>
                        <th>OPD Tujuan Awal</th>
                        <th>OPD Tujuan Akhir</th>
                        <th>Status</th>
                        <th>Catatan</th>
                        <th>Rekomendasi Sekwan</th>
                        <th>Rekomendasi Mitra</th>
                        <th>Rekomendasi SKPD</th>
                        <th>Rekomendasi TAPD</th>
                        <th>Volume</th>
                        <th>Satuan</th>
                        <th>Anggaran</th>
                        <th>Jenis Belanja</th>
                        <th>Sub Kegiatan</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    require 'koneksi.php';

                    $sql = "SELECT * FROM pokir";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        $counter = 1;

                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $counter . "</td>";
                            echo "<td>" . $row['id_usulan'] . "</td>";
                            echo "<td>" . date('d-m-Y', strtotime($row['tanggal_usul'])) . "</td>";
                            echo "<td>" . $row['pengusul'] . "</td>";
                            echo "<td>" . $row['usulan'] . "</td>";
                            echo "<td>" . $row['masalah'] . "</td>";
                            echo "<td>" . $row['alamat_lokasi'] . "</td>";
                            echo "<td>" . $row['usulan_ke'] . "</td>";
                            echo "<td>" . $row['opd_tujuan_awal'] . "</td>";
                            echo "<td>" . $row['opd_tujuan_akhir'] . "</td>";
                            echo "<td>" . $row['status'] . "</td>";
                            echo "<td>" . $row['catatan'] . "</td>";
                            echo "<td>" . $row['rekomendasi_sekwan'] . "</td>";
                            echo "<td>" . $row['rekomendasi_mitra'] . "</td>";
                            echo "<td>" . $row['rekomendasi_skpd'] . "</td>";
                            echo "<td>" . $row['rekomendasi_tapd'] . "</td>";
                            echo "<td>" . $row['volume'] . "</td>";
                            echo "<td>" . $row['satuan'] . "</td>";
                            echo "<td>" . $row['anggaran'] . "</td>";
                            echo "<td>" . $row['jenis_belanja'] . "</td>";
                            echo "<td>" . $row['sub_kegiatan'] . "</td>";
                            echo "<td>";
                            echo "<a href='edit.php?id=" . $row['id'] . "' class='btn btn-primary btn-sm mr-2'>Edit</a>";
                            echo "<a href='delete.php?id=" . $row['id'] . "' class='btn btn-sm btn-danger mt-3' onclick=\"return confirm('Apakah Anda yakin ingin menghapus data ini?')\">Hapus</a>";
                            echo "</td>";
                            echo "</tr>";
                    
                            $counter++;
                        }
                    } else {
                        echo "<tr><td colspan='21' class='text-center'>Tidak ada data.</td></tr>";
                    }

                    $conn->close();
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php
$content = ob_get_clean();
include 'layout.php';
?>