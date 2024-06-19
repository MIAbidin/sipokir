<?php
session_start();

$title = "Dashboard";
ob_start();

require 'koneksi.php';

$sql = "SELECT DISTINCT YEAR(tanggal_usul) AS tahun FROM pokir ORDER BY tahun DESC";
$result = $conn->query($sql);
$tahun_list = [];
while ($row = $result->fetch_assoc()) {
    $tahun_list[] = $row['tahun'];
}
$conn->close();
?>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Welcome to the Dashboard</h1>
<p class="mb-4">This is the overview of your application.</p>

<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Data Summary</h6>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h4>Total Records</h4>
                        <p class="h4 font-weight-bold text-primary">
                            <?php
                            require 'koneksi.php';
                            $sql = "SELECT COUNT(*) AS total FROM pokir";
                            $result = $conn->query($sql);
                            $row = $result->fetch_assoc();
                            echo $row['total'];
                            $conn->close();
                            ?>
                        </p>
                    </div>
                    <div class="col">
                        <h4>Latest Update</h4>
                        <p class="h5">
                            <?php
                            require 'koneksi.php';
                            $sql = "SELECT MAX(createdAt) AS latest_date FROM pokir";
                            $result = $conn->query($sql);
                            $row = $result->fetch_assoc();
                            echo date('d-m-Y', strtotime($row['latest_date']));
                            $conn->close();
                            ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Data Visualization</h6>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-9"></div>
                    <div class="col-md-3 text-right">
                        <label for="tahunSelect" class="form-label">Select Year</label>
                        <select id="tahunSelect" class="form-control">
                            <?php foreach ($tahun_list as $tahun): ?>
                                <option value="<?= $tahun ?>"><?= $tahun ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <canvas id="myChart" width="400" height="200"></canvas>
                <script>
                    document.getElementById('tahunSelect').addEventListener('change', function () {
                        var selectedYear = this.value;
                        fetch(`get_chart_data.php?year=${selectedYear}`)
                            .then(response => response.json())
                            .then(data => {
                                console.log(data);
                                myChart.data.labels = data.labels;
                                myChart.data.datasets[0].data = data.values;
                                myChart.update();
                            })
                            .catch(error => console.error('Error fetching data:', error));
                    });

                    var ctx = document.getElementById('myChart').getContext('2d');
                    var myChart = new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: [],
                            datasets: [{
                                label: 'Data Trend',
                                data: [],
                                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                                borderColor: 'rgba(54, 162, 235, 1)',
                                borderWidth: 1
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });

                    document.getElementById('tahunSelect').dispatchEvent(new Event('change'));
                </script>
            </div>
        </div>
    </div>
</div>

<?php
$content = ob_get_clean();
include 'layout.php';
?>