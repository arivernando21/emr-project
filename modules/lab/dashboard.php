<?php

include '../../middleware/auth.php';
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

include '../../templates/header.php';
include '../../templates/navbar.php';

?>

<h1>Dashboard Lab</h1>

<div class="table-container">

    <table>

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

                    <a href="result.php?id=<?= $lab['id']; ?>" class="action-btn table-btn">

                        Input Hasil

                    </a>

                </td>

            </tr>

        <?php } ?>

    </table>

</div>

<?php

include '../../templates/footer.php';

?>