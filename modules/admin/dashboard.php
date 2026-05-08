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

?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard Admin</title>
</head>

<body>

    <h1>Dashboard Admin EMR</h1>

    <hr>

    <h2>Statistik Sistem</h2>

    <table border="1" cellpadding="10">

        <tr>
            <th>Total Pasien</th>
            <td><?= $total_patients['total']; ?></td>
        </tr>

        <tr>
            <th>Total Visit</th>
            <td><?= $total_visits['total']; ?></td>
        </tr>

        <tr>
            <th>Waiting Nurse</th>
            <td><?= $waiting_nurse['total']; ?></td>
        </tr>

        <tr>
            <th>Waiting Doctor</th>
            <td><?= $waiting_doctor['total']; ?></td>
        </tr>

        <tr>
            <th>Waiting Lab</th>
            <td><?= $waiting_lab['total']; ?></td>
        </tr>

        <tr>
            <th>Rawat Inap</th>
            <td><?= $inpatient['total']; ?></td>
        </tr>

        <tr>
            <th>Completed</th>
            <td><?= $completed['total']; ?></td>
        </tr>

    </table>

    <br><br>

    <a href="patients.php">

        Kelola Pasien

    </a>

</body>

</html>