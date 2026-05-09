<?php

include '../../middleware/auth.php';
include '../../config/database.php';

$query = mysqli_query(

    $conn,

    "SELECT inpatients.*,
    patients.full_name,
    visits.visit_status

    FROM inpatients

    JOIN visits
    ON inpatients.visit_id = visits.id

    JOIN patients
    ON visits.patient_id = patients.id

    WHERE inpatient_status IN ('active', 'discharged')"
);

include '../../templates/header.php';
include '../../templates/navbar.php';

?>

<h1>Dashboard Rawat Inap</h1>

<div class="table-container">

    <table>

        <tr>

            <th>Pasien</th>
            <th>Kamar</th>
            <th>Tanggal Masuk</th>
            <th>Status</th>
            <th>Aksi</th>

        </tr>

        <?php while ($row = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td><?= $row['full_name']; ?></td>

                <td><?= $row['room_number']; ?></td>

                <td><?= $row['admission_date']; ?></td>

                <td>

                    <?php

                    $badge = 'badge-red';

                    if ($row['visit_status'] == 'discharged') {

                        $badge = 'badge-green';
                    }

                    ?>

                    <span class="badge <?= $badge; ?>">

                        <?= $row['visit_status']; ?>

                    </span>

                </td>

                <td>

                    <?php if ($row['inpatient_status'] == 'active') { ?>

                        <a class="action-btn" href="discharge.php?id=<?= $row['id']; ?>">

                            Discharge Pasien

                        </a>

                    <?php } else { ?>

                        <a class="action-btn green-btn" href="complete_visit.php?visit_id=<?= $row['visit_id']; ?>">

                            Selesaikan Visit

                        </a>

                    <?php } ?>

                </td>

            </tr>

        <?php } ?>

    </table>

</div>

<?php

include '../../templates/footer.php';

?>