<?php

include '../../config/database.php';

$visit_id = $_GET['id'];

$nurse_query = mysqli_query(

    $conn,

    "SELECT nurse_assessments.*,
patients.full_name

FROM nurse_assessments

JOIN visits
ON nurse_assessments.visit_id = visits.id

JOIN patients
ON visits.patient_id = patients.id

WHERE visit_id = '$visit_id'"
);

$nurse = mysqli_fetch_assoc($nurse_query);

$icd_query = mysqli_query(
    $conn,
    "SELECT * FROM icd_codes"
);

$procedure_query = mysqli_query(
    $conn,
    "SELECT * FROM icd9_procedures"
);

$medicine_query = mysqli_query(
    $conn,
    "SELECT * FROM medicines"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Assessment Dokter</title>
</head>

<body>

    <h1>Assessment Dokter</h1>

    <h3>Data Perawat</h3>

    <p><b>Pasien:</b>
        <?= $nurse['full_name']; ?></p>

    <p><b>Subjective:</b>
        <?= $nurse['subjective']; ?></p>

    <p><b>Objective:</b>
        <?= $nurse['objective']; ?></p>

    <p><b>Assessment:</b>
        <?= $nurse['assessment']; ?></p>

    <p><b>Plan:</b>
        <?= $nurse['plan']; ?></p>

    <hr>

    <form action="save_assessment.php" method="POST">

        <input type="hidden" name="visit_id" value="<?= $visit_id; ?>">

        <h3>Assessment Dokter</h3>

        <label>Anamnesis</label><br>
        <textarea name="anamnesis" required></textarea><br><br>

        <label>Pemeriksaan Fisik</label><br>
        <textarea name="physical_exam" required></textarea><br><br>

        <label>Diagnosis</label><br>
        <textarea name="diagnosis" required></textarea><br><br>

        <label>Diagnosa ICD 10</label><br>

        <select name="icd_id" required>

            <?php while ($icd = mysqli_fetch_assoc($icd_query)) { ?>

                <option value="<?= $icd['id']; ?>">

                    <?= $icd['icd_code']; ?>
                    -
                    <?= $icd['icd_name']; ?>

                </option>

            <?php } ?>

        </select>

        <br><br>

        <label>Tindakan ICD-9</label><br>

        <select name="procedure_icd9_id" required>

            <?php while ($procedure = mysqli_fetch_assoc($procedure_query)) { ?>

                <option value="<?= $procedure['id']; ?>">

                    <?= $procedure['procedure_code']; ?>
                    -
                    <?= $procedure['procedure_name']; ?>

                </option>

            <?php } ?>

        </select>

        <br><br>

        <label>Plan Dokter</label><br>
        <textarea name="doctor_plan"></textarea><br><br>

        <h3>Resep Obat</h3>

        <table border="1" cellpadding="10" id="medicine-table">

            <tr>
                <th>Obat</th>
                <th>Dosis</th>
                <th>Frekuensi</th>
                <th>Durasi</th>
                <th>Catatan</th>
            </tr>

            <tr>

                <td>

                    <select name="medicine_id[]">

                        <option value="">
                            -- Pilih Obat --
                        </option>

                        <?php

                        $medicine_query = mysqli_query(
                            $conn,
                            "SELECT * FROM medicines"
                        );

                        while ($medicine = mysqli_fetch_assoc($medicine_query)) {

                            ?>

                            <option value="<?= $medicine['id']; ?>">

                                <?= $medicine['medicine_name']; ?>

                            </option>

                        <?php } ?>

                    </select>

                </td>

                <td>
                    <input type="text" name="dosage[]">
                </td>

                <td>
                    <input type="text" name="frequency[]">
                </td>

                <td>
                    <input type="text" name="duration[]">
                </td>

                <td>
                    <input type="text" name="medicine_notes[]">
                </td>

            </tr>

        </table>

        <br>

        <button type="button" onclick="addMedicineRow()">

            Tambah Obat

        </button>

        <script>

            function addMedicineRow() {

                let table =
                    document.getElementById('medicine-table');

                let row = table.insertRow();

                row.innerHTML = `

    <td>

    <select name="medicine_id[]">

    <option value="">
    -- Pilih Obat --
    </option>

    <?php

    $medicine_query2 = mysqli_query(
        $conn,
        "SELECT * FROM medicines"
    );

    while ($medicine2 = mysqli_fetch_assoc($medicine_query2)) {

        ?>

    <option value="<?= $medicine2['id']; ?>">

    <?= $medicine2['medicine_name']; ?>

    </option>

    <?php } ?>

    </select>

    </td>

    <td>
    <input type="text" name="dosage[]">
    </td>

    <td>
    <input type="text" name="frequency[]">
    </td>

    <td>
    <input type="text" name="duration[]">
    </td>

    <td>
    <input type="text" name="medicine_notes[]">
    </td>

    `;
            }

        </script>

        <label>Status Tindakan</label><br>

        <select name="treatment_status">

            <option value="outpatient">

                Rawat Jalan

            </option>

            <option value="lab_request">

                Periksa Lab

            </option>

            <option value="inpatient">

                Rawat Inap

            </option>

            <option value="observation">

                Observasi

            </option>

            <option value="referred">

                Rujuk

            </option>

        </select>

        <br><br>

        <button type="submit">

            Simpan Assessment Dokter

        </button>

    </form>

</body>

</html>