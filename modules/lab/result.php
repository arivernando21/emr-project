<?php

include '../../config/database.php';

$lab_order_id = $_GET['id'];

$order_query = mysqli_query(

    $conn,

    "SELECT lab_orders.*,

    visits.id as visit_id,
    visits.visit_date,

    patients.full_name,

    doctor_assessments.anamnesis,
    doctor_assessments.physical_exam,
    doctor_assessments.diagnosis,
    doctor_assessments.doctor_plan,

    nurse_assessments.subjective,
    nurse_assessments.objective,
    nurse_assessments.assessment,
    nurse_assessments.plan,

    users.name as doctor_name

    FROM lab_orders

    JOIN visits
    ON lab_orders.visit_id = visits.id

    JOIN patients
    ON visits.patient_id = patients.id

    LEFT JOIN doctor_assessments
    ON lab_orders.doctor_assessment_id =
    doctor_assessments.id

    LEFT JOIN doctors
    ON doctor_assessments.doctor_id =
    doctors.id

    LEFT JOIN users
    ON doctors.user_id = users.id

    LEFT JOIN nurse_assessments
    ON visits.id = nurse_assessments.visit_id

    WHERE lab_orders.id = '$lab_order_id'"
);

$data = mysqli_fetch_assoc($order_query);

$service_query = mysqli_query(

    $conn,

    "SELECT * FROM lab_services"
);

include '../../templates/header.php';
include '../../templates/navbar.php';

?>

<h1>Input Hasil Lab</h1>

<div class="form-card">

    <h2>Data Pasien</h2>

    <p>
        <b>Nama Pasien:</b>
        <?= $data['full_name']; ?>
    </p>

    <p>
        <b>Tanggal Visit:</b>
        <?= $data['visit_date']; ?>
    </p>

    <hr>

    <h2>SOAP Perawat</h2>

    <p>
        <b>Subjective:</b>
        <?= $data['subjective']; ?>
    </p>

    <p>
        <b>Objective:</b>
        <?= $data['objective']; ?>
    </p>

    <p>
        <b>Assessment:</b>
        <?= $data['assessment']; ?>
    </p>

    <p>
        <b>Plan:</b>
        <?= $data['plan']; ?>
    </p>

    <hr>

    <h2>Assessment Dokter</h2>

    <p>
        <b>Dokter:</b>
        <?= $data['doctor_name']; ?>
    </p>

    <p>
        <b>Anamnesis:</b>
        <?= $data['anamnesis']; ?>
    </p>

    <p>
        <b>Pemeriksaan Fisik:</b>
        <?= $data['physical_exam']; ?>
    </p>

    <p>
        <b>Diagnosis Awal:</b>
        <?= $data['diagnosis']; ?>
    </p>

    <p>
        <b>Plan Dokter:</b>
        <?= $data['doctor_plan']; ?>
    </p>

    <hr>

    <h2>Form Hasil Lab</h2>

    <form action="save_result.php" method="POST">

        <input type="hidden" name="lab_order_id" value="<?= $lab_order_id; ?>">

        <div class="table-container">

            <table>

                <tr>

                    <th>Pemeriksaan</th>
                    <th>Nilai Normal</th>
                    <th>Satuan</th>
                    <th>Hasil</th>

                </tr>

                <?php while ($service = mysqli_fetch_assoc($service_query)) { ?>

                    <tr>

                        <td>

                            <?= $service['service_name']; ?>

                        </td>

                        <td>

                            <?= $service['normal_value']; ?>

                        </td>

                        <td>

                            <?= $service['unit']; ?>

                        </td>

                        <td>

                            <input type="text" name="result_number[]">

                            <input type="hidden" name="lab_service_id[]" value="<?= $service['id']; ?>">

                            <input type="hidden" name="normal_range[]" value="<?= $service['normal_value']; ?>">

                            <input type="hidden" name="result_unit[]" value="<?= $service['unit']; ?>">

                        </td>

                    </tr>

                <?php } ?>

            </table>

        </div>

        <br>

        <button type="submit">

            Simpan Hasil Lab

        </button>

    </form>

</div>

<?php

include '../../templates/footer.php';

?>