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

?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard Perawat</title>
</head>

<body>

    <h1>Dashboard Perawat</h1>

    <h3>

        Total Antrean Perawat:
        <?= $total_queue['total']; ?>

    </h3>

    <p>

        Login sebagai:
        <?= $_SESSION['name']; ?>

    </p>

    <a href="../../auth/logout.php">

        Logout

    </a>

    <hr>

    <table border="1" cellpadding="10">

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

</body>

</html>