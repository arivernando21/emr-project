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

$doctor_query = mysqli_query(

    $conn,

    "SELECT doctor_assessments.*,
    icd_codes.icd_name

    FROM doctor_assessments

    LEFT JOIN icd_codes
    ON doctor_assessments.icd_id = icd_codes.id

    WHERE visit_id = '$visit_id'

    ORDER BY doctor_assessments.id DESC

    LIMIT 1"
);

$doctor = mysqli_fetch_assoc($doctor_query);

$lab_query = mysqli_query(

    $conn,

    "SELECT lab_results.*,

    lab_services.service_name,
    lab_services.normal_value,
    lab_services.unit

    FROM lab_results

    LEFT JOIN lab_services
    ON lab_results.lab_service_id =
    lab_services.id

    JOIN lab_orders
    ON lab_results.lab_order_id =
    lab_orders.id

    WHERE lab_orders.visit_id = '$visit_id'"
);


$medicine_query = mysqli_query(
    $conn,
    "SELECT * FROM medicines"
);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<h1>Review Hasil Lab</h1>

<div class="form-card">

    <h3>Data Pasien</h3>

    <p><b>Pasien:</b>
        <?= $nurse['full_name']; ?></p>

    <hr>

    <h3>SOAP Perawat</h3>

    <p><b>Subjective:</b>
        <?= $nurse['subjective']; ?></p>

    <p><b>Objective:</b>
        <?= $nurse['objective']; ?></p>

    <p><b>Assessment:</b>
        <?= $nurse['assessment']; ?></p>

    <p><b>Plan:</b>
        <?= $nurse['plan']; ?></p>

    <hr>

    <h3>Assessment Dokter Awal</h3>

    <p><b>Anamnesis:</b>
        <?= $doctor['anamnesis']; ?></p>

    <p><b>Pemeriksaan Fisik:</b>
        <?= $doctor['physical_exam']; ?></p>

    <p><b>Diagnosis:</b>
        <?= $doctor['diagnosis']; ?></p>

    <p><b>ICD:</b>
        <?= $doctor['icd_name']; ?></p>

    <p><b>Plan Dokter:</b>
        <?= $doctor['doctor_plan']; ?></p>

    <hr>

    <h3>Hasil Lab</h3>

    <button type="button" class="action-btn" onclick="openLabResult()">

        Lihat Hasil Lab

    </button>

    <div id="lab-modal" class="lab-modal">

        <div class="lab-modal-content">

            <div class="lab-modal-header">

                <h3>Hasil Lab Pasien</h3>

                <button type="button" class="close-btn" onclick="closeLabResult()">

                    ✕

                </button>

            </div>

            <iframe src="print_lab_result.php?id=<?= $visit_id; ?>" frameborder="0">

            </iframe>

        </div>

    </div>

    <hr>

    <form action="save_lab_review.php" method="POST">

        <input type="hidden" name="visit_id" value="<?= $visit_id; ?>">

        <h3>Resep Obat</h3>

        <div class="table-container">

            <table id="medicine-table">

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

                            <?php while ($medicine = mysqli_fetch_assoc($medicine_query)) { ?>

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

        </div>

        <br>

        <button type="button" class="action-btn" onclick="addMedicineRow()">

            Tambah Obat

        </button>

        <br><br>

        <button type="submit">

            Kirim ke Farmasi

        </button>

    </form>

</div>

<style>
    .lab-modal {

        display: none;

        position: fixed;

        z-index: 99999;

        left: 0;
        top: 0;

        width: 100%;
        height: 100%;

        background: rgba(0, 0, 0, 0.6);
    }

    .lab-modal-content {

        background: white;

        width: 90%;
        height: 90%;

        margin: 2% auto;

        border-radius: 12px;

        overflow: hidden;

        display: flex;
        flex-direction: column;
    }

    .lab-modal-header {

        display: flex;

        justify-content: space-between;

        align-items: center;

        padding: 15px 20px;

        border-bottom: 1px solid #ddd;
    }

    .lab-modal iframe {

        flex: 1;

        width: 100%;
    }

    .close-btn {

        background: red;

        color: white;

        border: none;

        padding: 8px 14px;

        border-radius: 6px;

        cursor: pointer;
    }
</style>

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

<script>

    function openLabResult() {

        document.getElementById(
            'lab-modal'
        ).style.display = 'block';
    }

    function closeLabResult() {

        document.getElementById(
            'lab-modal'
        ).style.display = 'none';
    }

</script>

<?php

include '../../templates/footer.php';

?>