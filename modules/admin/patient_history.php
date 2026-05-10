<?php

include '../../config/database.php';

$patient_id = $_GET['id'];

$status_filter = '';

if (isset($_GET['status'])) {

    $status_filter = $_GET['status'];
}

$patient_query = mysqli_query(

    $conn,

    "SELECT * FROM patients
WHERE id = '$patient_id'"
);

$patient = mysqli_fetch_assoc($patient_query);

$visit_query = mysqli_query(

    $conn,

    "SELECT visits.*,
doctor_assessments.diagnosis,
icd_codes.icd_name

FROM visits

LEFT JOIN doctor_assessments
ON visits.id = doctor_assessments.visit_id

LEFT JOIN icd_codes
ON doctor_assessments.icd_id = icd_codes.id

WHERE visits.patient_id = '$patient_id'

" . (!empty($status_filter)
        ? " AND visits.visit_status = '$status_filter'"
        : "") . "

ORDER BY visits.visit_date DESC"
);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>


<a href="patients.php" class="action-btn gray-btn">

    Kembali ke Pasien

</a>

<hr>

<h1>Riwayat Rekam Medis Pasien</h1>

<h3><?= $patient['full_name']; ?></h3>

<p>
    No RM:
    <?= $patient['medical_record_number']; ?>
</p>

<p>
    NIK:
    <?= $patient['nik']; ?>
</p>

<hr>

<form method="GET">

    <input type="hidden" name="id" value="<?= $patient_id; ?>">

    <select name="status">

        <option value="">
            Semua Status
        </option>

        <option value="waiting_nurse">
            Waiting Nurse
        </option>

        <option value="waiting_doctor">
            Waiting Doctor
        </option>

        <option value="waiting_lab">
            Waiting Lab
        </option>

        <option value="inpatient">
            Rawat Inap
        </option>

        <option value="completed">
            Completed
        </option>

    </select>

    <button type="submit">

        Filter

    </button>

</form>

<br>

<div class="table-container">

    <table>

        <tr>

            <th>Tanggal Visit</th>
            <th>Status</th>
            <th>Diagnosis</th>
            <th>ICD-10</th>
            <th>Detail</th>

        </tr>

        <?php while ($visit = mysqli_fetch_assoc($visit_query)) { ?>

            <tr>

                <td>
                    <?= $visit['visit_date']; ?>
                </td>

                <td>

                    <?php

                    $status = $visit['visit_status'];

                    $badge = 'badge-gray';

                    if ($status == 'waiting_nurse') {

                        $badge = 'badge-orange';

                    } elseif ($status == 'waiting_doctor') {

                        $badge = 'badge-purple';

                    } elseif ($status == 'waiting_lab') {

                        $badge = 'badge-red';

                    } elseif ($status == 'waiting_pharmacy') {

                        $badge = 'badge-blue';

                    } elseif ($status == 'completed') {

                        $badge = 'badge-green';
                    }

                    ?>

                    <span class="badge <?= $badge; ?>">

                        <?= $status; ?>

                    </span>

                </td>

                <td>
                    <?= $visit['diagnosis']; ?>
                </td>

                <td>
                    <?= $visit['icd_name']; ?>
                </td>

                <td>

                    <a href="visit_detail.php?id=<?= $visit['id']; ?>" class="action-btn">

                        Lihat Detail

                    </a>

                </td>

            </tr>

        <?php } ?>

    </table>
</div>

<?php

include '../../templates/footer.php';

?>