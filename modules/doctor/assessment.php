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

<input type="hidden"
name="visit_id"
value="<?= $visit_id; ?>">

<h3>Assessment Dokter</h3>

<label>Anamnesis</label><br>
<textarea name="anamnesis"></textarea><br><br>

<label>Pemeriksaan Fisik</label><br>
<textarea name="physical_exam"></textarea><br><br>

<label>Diagnosis</label><br>
<textarea name="diagnosis"></textarea><br><br>

<label>ICD</label><br>

<select name="icd_id">

<?php while($icd = mysqli_fetch_assoc($icd_query)) { ?>

<option value="<?= $icd['id']; ?>">

<?= $icd['icd_code']; ?>
-
<?= $icd['icd_name']; ?>

</option>

<?php } ?>

</select>

<br><br>

<label>Plan Dokter</label><br>
<textarea name="doctor_plan"></textarea><br><br>

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