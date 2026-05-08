<?php

include '../../config/database.php';
session_start();

$visit_id = $_POST['visit_id'];

$blood_pressure = $_POST['blood_pressure'];
$temperature = $_POST['temperature'];
$pulse = $_POST['pulse'];
$respiration = $_POST['respiration'];

$subjective = $_POST['subjective'];
$objective = $_POST['objective'];
$assessment = $_POST['assessment'];
$plan = $_POST['plan'];

$triage_level = $_POST['triage_level'];

$assigned_poli_id = $_POST['assigned_poli_id'];
$assigned_doctor_id = $_POST['assigned_doctor_id'];
$nurse_id = $_SESSION['user_id'];

$query = mysqli_query(

$conn,

"INSERT INTO nurse_assessments (

visit_id,
nurse_id,
blood_pressure,
temperature,
pulse,
respiration,
subjective,
objective,
assessment,
plan,
triage_level,
assigned_poli_id,
assigned_doctor_id

)

VALUES (

'$visit_id',
'$nurse_id',
'$blood_pressure',
'$temperature',
'$pulse',
'$respiration',
'$subjective',
'$objective',
'$assessment',
'$plan',
'$triage_level',
'$assigned_poli_id',
'$assigned_doctor_id'

)"
);

if($query){

    mysqli_query(

        $conn,

        "UPDATE visits

        SET visit_status = 'waiting_doctor'

        WHERE id = '$visit_id'"
    );

    echo "Assessment berhasil disimpan";

} else {

    echo "Gagal menyimpan assessment";
}
?>