<?php

include '../../config/database.php';

$visit_id = $_GET['id'];

$visit_query = mysqli_query(

    $conn,

    "SELECT visits.*,
patients.full_name

FROM visits

JOIN patients
ON visits.patient_id = patients.id

WHERE visits.id = '$visit_id'"
);

$visit = mysqli_fetch_assoc($visit_query);

$nurse_query = mysqli_query(

    $conn,

    "SELECT nurse_assessments.*,

users.name as nurse_name

FROM nurse_assessments

LEFT JOIN users
ON nurse_assessments.nurse_id = users.id

WHERE visit_id = '$visit_id'"
);

$nurse = mysqli_fetch_assoc($nurse_query);

$doctor_query = mysqli_query(

    $conn,

    "SELECT doctor_assessments.*,
    users.name as doctor_name,
    doctor_specializations.specialization_name
    as specialization,
    icd_codes.icd_name,
    icd9_procedures.procedure_name

FROM doctor_assessments

LEFT JOIN users
ON doctor_assessments.doctor_id = users.id

LEFT JOIN doctors
ON doctor_assessments.doctor_id = doctors.id

LEFT JOIN doctor_specializations
ON doctors.specialization_id =
doctor_specializations.id

LEFT JOIN icd_codes
ON doctor_assessments.icd_id = icd_codes.id

LEFT JOIN icd9_procedures
ON doctor_assessments.procedure_icd9_id =
icd9_procedures.id

WHERE visit_id = '$visit_id'"
);

$doctor = mysqli_fetch_assoc($doctor_query);

$lab_query = mysqli_query(

    $conn,

    "SELECT lab_results.*,
lab_orders.order_notes

FROM lab_results

JOIN lab_orders
ON lab_results.lab_order_id = lab_orders.id

WHERE lab_orders.visit_id = '$visit_id'"
);

$prescription_query = mysqli_query(

    $conn,

    "SELECT prescriptions.*,
medicines.medicine_name

FROM prescriptions

JOIN medicines
ON prescriptions.medicine_id = medicines.id

WHERE prescriptions.visit_id = '$visit_id'"
);

$inpatient_query = mysqli_query(

    $conn,

    "SELECT *

FROM inpatients

WHERE visit_id = '$visit_id'"
);

$inpatient = mysqli_fetch_assoc($inpatient_query);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<style>
    @media print {

        .no-print {

            display: block;
        }

        @media print {

            .no-print {

                display: none;
            }
        }

        button {

            display: none;
        }

        body {

            font-family: Arial;
        }

        table {

            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {

            border: 1px solid black;
            padding: 8px;
        }
    }
</style>
</head>

<div class="no-print">

    <div class="no-print action-group">

        <button class="action-btn" onclick="window.print()">

            Cetak Rekam Medis

        </button>

        <button class="action-btn green-btn" onclick="printPrescription()">

            Cetak Resep

        </button>

        <a href="patient_history.php?id=<?= $visit['patient_id']; ?>" class="action-btn gray-btn">

            ← Kembali ke Riwayat

        </a>

    </div>

</div>

<br><br>

<hr>

<h1>Detail Rekam Medis</h1>
<div class="form-card">

    <h3><?= $visit['full_name']; ?></h3>

    <p>
        Tanggal Visit:
        <?= $visit['visit_date']; ?>
    </p>

    <?php

    $status = $visit['visit_status'];

    $badge = 'badge-gray';

    if ($status == 'waiting_nurse') {

        $badge = 'badge-orange';

    } elseif ($status == 'waiting_doctor') {

        $badge = 'badge-purple';

    } elseif ($status == 'waiting_lab') {

        $badge = 'badge-red';

    } elseif ($status == 'completed') {

        $badge = 'badge-green';
    }

    ?>

    <span class="badge <?= $badge; ?>">

        <?= $status; ?>

    </span>
    <hr>

    <h2>SOAP Perawat</h2>


    <p>

        <b>Tanggal Assessment:</b>

        <?= date(
            'd-m-Y H:i',
            strtotime($doctor['created_at'])
        ); ?>

    </p>

    <p>

        <b>Perawat:</b>

        <?= $nurse['nurse_name']; ?>

    </p>

    <p>
        <b>Subjective:</b><br>
        <?= $nurse['subjective']; ?>
    </p>

    <p>
        <b>Objective:</b><br>
        <?= $nurse['objective']; ?>
    </p>

    <p>
        <b>Assessment:</b><br>
        <?= $nurse['assessment']; ?>
    </p>

    <p>
        <b>Plan:</b><br>
        <?= $nurse['plan']; ?>
    </p>

    <hr>

    <h2>Assessment Dokter</h2>

    <p>

        <b>Tanggal Assessment:</b>

        <?= date(
            'd-m-Y H:i',
            strtotime($doctor['created_at'])
        ); ?>

    </p>

    <p>

        <b>Dokter:</b>

        <?= $doctor['doctor_name']; ?>

    </p>

    <p>

        <b>Spesialisasi:</b>

        <?= $doctor['specialization']; ?>

    </p>

    <p>
        <b>Anamnesis:</b><br>
        <?= $doctor['anamnesis']; ?>
    </p>

    <p>
        <b>Pemeriksaan Fisik:</b><br>
        <?= $doctor['physical_exam']; ?>
    </p>

    <p>
        <b>Diagnosis:</b><br>
        <?= $doctor['diagnosis']; ?>
    </p>

    <p>
        <b>ICD-10:</b><br>
        <?= $doctor['icd_name']; ?>
    </p>

    <p>
        <b>ICD-9:</b><br>
        <?= $doctor['procedure_name']; ?>
    </p>

    <p>
        <b>Plan Dokter:</b><br>
        <?= $doctor['doctor_plan']; ?>
    </p>

    <hr>

    <h2>Hasil Lab</h2>

    <?php while ($lab = mysqli_fetch_assoc($lab_query)) { ?>

        <p>
            <b>Hasil:</b>
            <?= $lab['result_value']; ?>
        </p>

        <p>
            <b>Catatan:</b>
            <?= $lab['result_notes']; ?>
        </p>

        <hr>

    <?php } ?>

    <h2>Resep Obat</h2>

    <table border="1" cellpadding="10">

        <tr>

            <th>Obat</th>
            <th>Dosis</th>
            <th>Frekuensi</th>
            <th>Durasi</th>

        </tr>

        <?php while ($prescription = mysqli_fetch_assoc($prescription_query)) { ?>

            <tr>

                <td>
                    <?= $prescription['medicine_name']; ?>
                </td>

                <td>
                    <?= $prescription['dosage']; ?>
                </td>

                <td>
                    <?= $prescription['frequency']; ?>
                </td>

                <td>
                    <?= $prescription['duration']; ?>
                </td>

            </tr>

        <?php } ?>

    </table>

    <hr>

    <?php if ($inpatient) { ?>

        <h2>Rawat Inap</h2>

        <p>
            Kamar:
            <?= $inpatient['room_number']; ?>
        </p>

        <p>
            Tanggal Masuk:
            <?= $inpatient['admission_date']; ?>
        </p>

        <p>
            Tanggal Keluar:
            <?= $inpatient['discharge_date']; ?>
        </p>

    <?php } ?>
</div>

<script>

function printPrescription() {

    const iframe = document.createElement('iframe');

    iframe.style.display = 'none';

    iframe.src =
        'print_prescription.php?id=<?= $visit['id']; ?>';

    document.body.appendChild(iframe);

    iframe.onload = function() {

        iframe.contentWindow.focus();

        iframe.contentWindow.print();
    };
}

</script>

<?php

include '../../templates/footer.php';

?>