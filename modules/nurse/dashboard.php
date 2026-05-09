<?php

include '../../middleware/nurse_only.php';
include '../../config/database.php';

$total_queue = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total

FROM visits

WHERE visit_status = 'waiting_nurse'"
    )

);

$query = mysqli_query(

    $conn,

    "SELECT visits.*, patients.full_name

    FROM visits

    JOIN patients
    ON visits.patient_id = patients.id

    WHERE visit_status = 'waiting_nurse'"
);

$waiting_nurse = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_nurse'"
    )
);

$waiting_doctor = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_doctor'"
    )
);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<h1>Dashboard Perawat</h1>
<div class="stats-grid">

    <div class="stat-card orange">

        <h2><?= $waiting_nurse; ?></h2>

        <p>Waiting Nurse</p>

    </div>

    <div class="stat-card purple">

        <h2><?= $waiting_doctor; ?></h2>

        <p>Waiting Doctor</p>

    </div>

</div>
<div class="form-card">

    <h3>

        Total Antrean Perawat:
        <?= $total_queue['total']; ?>

    </h3>

    <p>

        Login sebagai:
        <?= $_SESSION['name']; ?>

    </p>

    <hr>

    <divd class="table-container">
</div>
<table>

    <tr>
        <th>No Antrean</th>
        <th>Nama Pasien</th>
        <th>Tanggal Visit</th>
        <th>Status</th>
        <th>Aksi</th>
    </tr>

    <?php while ($visit = mysqli_fetch_assoc($query)) { ?>

        <tr>
            <td><?= $visit['queue_number']; ?></td>

            <td><?= $visit['full_name']; ?></td>

            <td><?= $visit['visit_date']; ?></td>

            <td><?= $visit['visit_status']; ?></td>

            <td>

                <a href="assessment.php?id=<?= $visit['id']; ?>">

                    Assessment

                </a>

            </td>

        </tr>

    <?php } ?>

</table>
</divd>

<?php

include '../../templates/footer.php';

?>