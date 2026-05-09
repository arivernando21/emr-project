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
<?php

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<h1>Dashboard Admin EMR</h1>

<p>

    Selamat datang,
    <?= $_SESSION['name']; ?>

</p>

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

<?php

include '../../templates/footer.php';

?>