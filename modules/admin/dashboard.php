<?php

include '../../middleware/admin_only.php';

include '../../config/database.php';

$total_patients = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM patients"
    )

);

$total_visits = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM visits"
    )

);

$waiting_nurse = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM visits
WHERE visit_status = 'waiting_nurse'"
    )

);

$waiting_doctor = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM visits
WHERE visit_status = 'waiting_doctor'"
    )

);

$waiting_lab = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM visits
WHERE visit_status = 'waiting_lab'"
    )

);

$inpatient = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM visits
WHERE visit_status = 'inpatient'"
    )

);

$completed = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total
FROM visits
WHERE visit_status = 'completed'"
    )

);

$workflow_query = mysqli_query(

    $conn,

    "SELECT visits.*,

patients.full_name

FROM visits

JOIN patients
ON visits.patient_id = patients.id

ORDER BY visits.visit_date DESC

LIMIT 10"
);

$chart_query = mysqli_query(

    $conn,

    "SELECT visit_status,
COUNT(*) as total

FROM visits

GROUP BY visit_status"
);

$chart_labels = [];

$chart_data = [];

while ($row = mysqli_fetch_assoc($chart_query)) {

    $chart_labels[] = $row['visit_status'];

    $chart_data[] = $row['total'];
}

?>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="../../assets/css/style.css">
    <style>
        body {

            font-family: Arial;
        }

        .dashboard-cards {

            display: flex;

            flex-wrap: wrap;

            gap: 20px;

            margin-top: 20px;
        }

        .card {

            width: 220px;

            padding: 20px;

            border-radius: 10px;

            color: white;

            font-size: 18px;

            font-weight: bold;
        }

        .blue {
            background: #3498db;
        }

        .green {
            background: #27ae60;
        }

        .orange {
            background: #f39c12;
        }

        .red {
            background: #e74c3c;
        }

        .purple {
            background: #8e44ad;
        }

        .gray {
            background: #34495e;
        }

        .card small {

            display: block;

            margin-top: 10px;

            font-size: 14px;
        }

        .badge {

            padding: 5px 10px;

            color: white;

            border-radius: 5px;

            font-size: 12px;
        }

        .waiting_nurse {

            background: orange;
        }

        .waiting_doctor {

            background: blue;
        }

        .waiting_lab {

            background: purple;
        }

        .lab_result_ready {

            background: teal;
        }

        .inpatient {

            background: red;
        }

        .completed {

            background: green;
        }

        .referred {

            background: gray;
        }

        .app-header {

            background: #2c3e50;

            color: white;

            padding: 20px;

            border-radius: 10px;

            margin-bottom: 20px;
        }

        .app-header h1 {

            margin: 0;
        }

        .app-header p {

            margin-top: 10px;
        }

        .navbar {

            background: #34495e;

            padding: 15px;

            border-radius: 10px;

            margin-bottom: 20px;
        }

        .navbar a {

            color: white;

            text-decoration: none;

            margin-right: 20px;

            font-weight: bold;
        }

        .navbar a:hover {

            text-decoration: underline;
        }

        .quick-actions {

            margin-bottom: 20px;
        }

        .action-btn {

            display: inline-block;

            background: #3498db;

            color: white;

            padding: 12px 20px;

            border-radius: 8px;

            text-decoration: none;

            margin-right: 10px;

            font-weight: bold;
        }

        .action-btn:hover {

            background: #2980b9;
        }
    </style>
    <title>Dashboard Admin</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>
    <div class="app-header">

        <h1>

            🏥 SIRS / EMR Rumah Sakit

        </h1>

        <p>

            Sistem Informasi Rekam Medis

        </p>

    </div>

    <div class="navbar">

        <a href="dashboard.php">

            Dashboard

        </a>

        <a href="patients.php">

            Kelola Pasien

        </a>

        <a href="activity_logs.php">

            Activity Logs

        </a>

        <a href="../../auth/logout.php">

            Logout

        </a>

    </div>

    <div class="quick-actions">

        <a href="add_patient.php" class="action-btn">

            ➕ Tambah Pasien

        </a>

        <a href="patients.php" class="action-btn">

            📋 Kelola Pasien

        </a>

        <a href="activity_logs.php" class="action-btn">

            📄 Activity Logs

        </a>

    </div>

    <h1>Dashboard Admin EMR</h1>

    <p>

        Selamat datang,
        <?= $_SESSION['name']; ?>

    </p>

    <a href="../../auth/logout.php">

        Logout

    </a>

    <hr>

    <hr>

    <h2>Statistik Sistem</h2>

    <div class="dashboard-cards">

        <div class="card blue">

            <?= $total_patients['total']; ?>

            <small>Total Pasien</small>

        </div>

        <div class="card green">

            <?= $total_visits['total']; ?>

            <small>Total Visit</small>

        </div>

        <div class="card orange">

            <?= $waiting_nurse['total']; ?>

            <small>Waiting Nurse</small>

        </div>

        <div class="card purple">

            <?= $waiting_doctor['total']; ?>

            <small>Waiting Doctor</small>

        </div>

        <div class="card red">

            <?= $inpatient['total']; ?>

            <small>Rawat Inap</small>

        </div>

        <div class="card gray">

            <?= $completed['total']; ?>

            <small>Completed</small>

        </div>

    </div>

    <hr>

    <h2>Workflow Pasien Hari Ini</h2>

    <table border="1" cellpadding="10" width="100%">

        <tr>

            <th>No Antrean</th>
            <th>Pasien</th>
            <th>Status</th>
            <th>Tanggal Visit</th>

        </tr>

        <?php while (
            $visit =
            mysqli_fetch_assoc($workflow_query)
        ) { ?>

            <tr>

                <td>
                    <?= $visit['queue_number']; ?>
                </td>

                <td>
                    <?= $visit['full_name']; ?>
                </td>

                <td>

                    <span class="badge
                    <?= $visit['visit_status']; ?>">

                        <?= $visit['visit_status']; ?>

                    </span>

                </td>

                <td>
                    <?= $visit['visit_date']; ?>
                </td>

            </tr>

        <?php } ?>

    </table>

    <br><br>

    <h2>Grafik Status Pasien</h2>

    <canvas id="visitChart" width="400" height="150">

    </canvas>

    <br><br>



    <script>

        const ctx =
            document.getElementById('visitChart');

        new Chart(ctx, {

            type: 'bar',

            data: {

                labels:
                    <?= json_encode($chart_labels); ?>,

                datasets: [{

                    label:
                        'Jumlah Status Visit',

                    data:
                        <?= json_encode($chart_data); ?>,

                    borderWidth: 1
                }]
            },

            options: {

                responsive: true,

                scales: {

                    y: {

                        beginAtZero: true
                    }
                }
            }
        });

    </script>

</body>

</html>