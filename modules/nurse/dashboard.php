<?php

include '../../config/database.php';

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

<table border="1" cellpadding="10">

<tr>
    <th>Nama Pasien</th>
    <th>Tanggal Visit</th>
    <th>Status</th>
    <th>Aksi</th>
</tr>

<?php while($visit = mysqli_fetch_assoc($query)) { ?>

<tr>

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