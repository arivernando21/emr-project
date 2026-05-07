<?php

include '../../config/database.php';

$query = mysqli_query(

    $conn,

    "SELECT lab_orders.*,
patients.full_name

FROM lab_orders

JOIN visits
ON lab_orders.visit_id = visits.id

JOIN patients
ON visits.patient_id = patients.id

WHERE order_status = 'pending'"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard Lab</title>
</head>

<body>

    <h1>Dashboard Lab</h1>

    <table border="1" cellpadding="10">

        <tr>

            <th>Pasien</th>
            <th>Catatan</th>
            <th>Aksi</th>

        </tr>

        <?php while ($lab = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td><?= $lab['full_name']; ?></td>

                <td><?= $lab['order_notes']; ?></td>

                <td>

                    <a href="result.php?id=<?= $lab['id']; ?>">

                        Input Hasil

                    </a>

                </td>

            </tr>

        <?php } ?>

    </table>

</body>

</html>