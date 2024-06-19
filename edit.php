<?php
session_start();
require 'koneksi.php';

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
if (!$id) {
    echo "ID tidak valid.";
    exit();
}

$stmt = $conn->prepare("SELECT * FROM pokir WHERE id = ?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        $title = "Edit Data";

        ob_start();
        ?>
        <h2>Edit Data</h2>
        <form action="update.php" method="post">
            <input type="hidden" name="id" value="<?php echo htmlspecialchars($row['id']); ?>">
            <div class="form-group">
                <label>ID Usulan</label>
                <input type="text" class="form-control" name="id_usulan"
                    value="<?php echo htmlspecialchars($row['id_usulan']); ?>">
            </div>
            <div class="form-group">
                <label>Tanggal Usul</label>
                <?php
                $tanggal_usul_value = date('Y-m-d', strtotime($row['tanggal_usul']));
                ?>
                <input type="date" class="form-control" name="tanggal_usul"
                    value="<?php echo htmlspecialchars($tanggal_usul_value); ?>">
            </div>

            <div class="form-group">
                <label>Pengusul</label>
                <input type="text" class="form-control" name="pengusul"
                    value="<?php echo htmlspecialchars($row['pengusul']); ?>">
            </div>
            <div class="form-group">
                <label>Usulan</label>
                <textarea class="form-control" name="usulan"><?php echo htmlspecialchars($row['usulan']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Masalah</label>
                <textarea class="form-control" name="masalah"><?php echo htmlspecialchars($row['masalah']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Alamat Lokasi</label>
                <textarea class="form-control"
                    name="alamat_lokasi"><?php echo htmlspecialchars($row['alamat_lokasi']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Usulan Ke</label>
                <input type="text" class="form-control" name="usulan_ke"
                    value="<?php echo htmlspecialchars($row['usulan_ke']); ?>">
            </div>
            <div class="form-group">
                <label>OPD Tujuan Awal</label>
                <input type="text" class="form-control" name="opd_tujuan_awal"
                    value="<?php echo htmlspecialchars($row['opd_tujuan_awal']); ?>">
            </div>
            <div class="form-group">
                <label>OPD Tujuan Akhir</label>
                <input type="text" class="form-control" name="opd_tujuan_akhir"
                    value="<?php echo htmlspecialchars($row['opd_tujuan_akhir']); ?>">
            </div>
            <div class="form-group">
                <label>Status</label>
                <input type="text" class="form-control" name="status" value="<?php echo htmlspecialchars($row['status']); ?>">
            </div>
            <div class="form-group">
                <label>Catatan</label>
                <textarea class="form-control" name="catatan"><?php echo htmlspecialchars($row['catatan']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Rekomendasi Sekwan</label>
                <textarea class="form-control"
                    name="rekomendasi_sekwan"><?php echo htmlspecialchars($row['rekomendasi_sekwan']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Rekomendasi Mitra</label>
                <textarea class="form-control"
                    name="rekomendasi_mitra"><?php echo htmlspecialchars($row['rekomendasi_mitra']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Rekomendasi SKPD</label>
                <textarea class="form-control"
                    name="rekomendasi_skpd"><?php echo htmlspecialchars($row['rekomendasi_skpd']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Rekomendasi TAPD</label>
                <textarea class="form-control"
                    name="rekomendasi_tapd"><?php echo htmlspecialchars($row['rekomendasi_tapd']); ?></textarea>
            </div>
            <div class="form-group">
                <label>Volume</label>
                <input type="text" class="form-control" name="volume" value="<?php echo htmlspecialchars($row['volume']); ?>">
            </div>
            <div class="form-group">
                <label>Satuan</label>
                <input type="text" class="form-control" name="satuan" value="<?php echo htmlspecialchars($row['satuan']); ?>">
            </div>
            <div class="form-group">
                <label>Anggaran</label>
                <input type="text" class="form-control" name="anggaran"
                    value="<?php echo htmlspecialchars($row['anggaran']); ?>">
            </div>
            <div class="form-group">
                <label>Jenis Belanja</label>
                <input type="text" class="form-control" name="jenis_belanja"
                    value="<?php echo htmlspecialchars($row['jenis_belanja']); ?>">
            </div>
            <div class="form-group">
                <label>Sub Kegiatan</label>
                <input type="text" class="form-control" name="sub_kegiatan"
                    value="<?php echo htmlspecialchars($row['sub_kegiatan']); ?>">
            </div>
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </form>
        <?php
        $content = ob_get_clean();
        include 'layout.php';
    } else {
        echo "Data tidak ditemukan.";
    }
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
?>