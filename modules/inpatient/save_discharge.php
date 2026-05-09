<?php

include '../../config/database.php';

$inpatient_id = $_POST['inpatient_id'];

$visit_id = $_POST['visit_id'];

$notes = $_POST['notes'];

mysqli_query(

    $conn,

    "UPDATE inpatients

    SET

    inpatient_status = 'discharged',
    discharge_date = NOW(),
    notes = '$notes'

    WHERE id = '$inpatient_id'"
);

mysqli_query(

    $conn,

    "UPDATE visits

    SET visit_status = 'discharged'

    WHERE id = '$visit_id'"
);

header("Location: dashboard.php");

?>