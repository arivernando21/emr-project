<?php

include '../../middleware/doctor_only.php';
include '../../config/database.php';
$total_queue = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total

FROM visits

WHERE visit_status = 'waiting_doctor'"
    )

);

$query = mysqli_query(

    $conn,

    "SELECT visits.*, patients.full_name

FROM visits

JOIN patients
ON visits.patient_id = patients.id

WHERE visit_status = 'waiting_doctor'"
);

$waiting_doctor = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_doctor'"
    )
);

$waiting_lab = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_lab'"
    )
);

$waiting_pharmacy = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_pharmacy'"
    )
);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<h1>Dashboard Dokter</h1>
<div class="stats-grid">

    <div class="stat-card purple">

        <h2><?= $waiting_doctor; ?></h2>

        <p>Waiting Doctor</p>

    </div>

    <div class="stat-card red">

        <h2><?= $waiting_lab; ?></h2>

        <p>Waiting Lab</p>

    </div>

    <div class="stat-card green">

        <h2><?= $waiting_pharmacy; ?></h2>

        <p>Waiting Pharmacy</p>

    </div>

</div>
<div class="form-card">

    <h3>

        Total Antrean Dokter:
        <?= $total_queue['total']; ?>

    </h3>

    <p>

        Login sebagai:
        <?= $_SESSION['name']; ?>

    </p>

    <hr>
</div>

<div class="table-container">

    <table>

        <tr>
            <th>Nama Pasien</th>
            <th>Tanggal Visit</th>
            <th>Status</th>
            <th>Aksi</th>
        </tr>

        <?php while ($visit = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td><?= $visit['full_name']; ?></td>

                <td><?= $visit['visit_date']; ?></td>

                <td><?= $visit['visit_status']; ?></td>

                <td>

                    <a href="assessment.php?id=<?= $visit['id']; ?>">

                        Assessment Dokter

                    </a>

                </td>

            </tr>

        <?php } ?>

    </table>
</div>

<?php

include '../../templates/footer.php';

?>