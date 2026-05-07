<?php

include '../../config/database.php';

$visit_id = $_GET['id'];

$poli_query = mysqli_query(
    $conn,
    "SELECT * FROM poli"
);

$doctor_query = mysqli_query(
    $conn,
    "SELECT doctors.id, users.name

    FROM doctors

    JOIN users
    ON doctors.user_id = users.id"
);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Assessment Perawat</title>
</head>
<body>

<h1>Assessment Perawat</h1>

<form action="save_assessment.php" method="POST">

<input type="hidden"
name="visit_id"
value="<?= $visit_id; ?>">

<h3>Vital Sign</h3>

<label>Tekanan Darah</label><br>
<input type="text" name="blood_pressure"><br><br>

<label>Suhu</label><br>
<input type="text" name="temperature"><br><br>

<label>Nadi</label><br>
<input type="text" name="pulse"><br><br>

<label>Respirasi</label><br>
<input type="text" name="respiration"><br><br>

<h3>SOAP</h3>

<label>Subjective</label><br>
<textarea name="subjective"></textarea><br><br>

<label>Objective</label><br>
<textarea name="objective"></textarea><br><br>

<label>Assessment</label><br>
<textarea name="assessment"></textarea><br><br>

<label>Plan</label><br>
<textarea name="plan"></textarea><br><br>

<h3>Triase</h3>

<select name="triage_level">

<option value="low">Low</option>
<option value="medium">Medium</option>
<option value="high">High</option>
<option value="emergency">Emergency</option>

</select>

<br><br>

<h3>Poli Tujuan</h3>

<select name="assigned_poli_id">

<?php while($poli = mysqli_fetch_assoc($poli_query)) { ?>

<option value="<?= $poli['id']; ?>">

<?= $poli['poli_name']; ?>

</option>

<?php } ?>

</select>

<br><br>

<h3>Dokter Tujuan</h3>

<select name="assigned_doctor_id">

<?php while($doctor = mysqli_fetch_assoc($doctor_query)) { ?>

<option value="<?= $doctor['id']; ?>">

<?= $doctor['name']; ?>

</option>

<?php } ?>

</select>

<br><br>

<button type="submit">

Simpan Assessment

</button>

</form>

</body>
</html>