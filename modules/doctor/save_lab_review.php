<?php

include '../../config/database.php';

$visit_id = $_POST['visit_id'];

$medicine_ids = $_POST['medicine_id'];

$dosages = $_POST['dosage'];

$frequencies = $_POST['frequency'];

$durations = $_POST['duration'];

$medicine_notes = $_POST['medicine_notes'];

$doctor_query = mysqli_query(

    $conn,

    "SELECT id

    FROM doctor_assessments

    WHERE visit_id = '$visit_id'

    ORDER BY id DESC

    LIMIT 1"
);

$doctor = mysqli_fetch_assoc($doctor_query);

$doctor_assessment_id = $doctor['id'];

for ($i = 0; $i < count($medicine_ids); $i++) {

    if (!empty($medicine_ids[$i])) {

        mysqli_query(

            $conn,

            "INSERT INTO prescriptions (

            visit_id,
            doctor_assessment_id,
            medicine_id,
            dosage,
            frequency,
            duration,
            notes

            )

            VALUES (

            '$visit_id',
            '$doctor_assessment_id',
            '" . $medicine_ids[$i] . "',
            '" . $dosages[$i] . "',
            '" . $frequencies[$i] . "',
            '" . $durations[$i] . "',
            '" . $medicine_notes[$i] . "'

            )"
        );
    }
}

mysqli_query(

    $conn,

    "UPDATE visits

    SET visit_status = 'waiting_pharmacy',
        is_lab_return = 0

    WHERE id = '$visit_id'"
);

header("Location: dashboard.php");

?>