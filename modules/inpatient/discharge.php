<?php

include '../../config/database.php';

$id = $_GET['id'];

$query = mysqli_query(

    $conn,

    "UPDATE inpatients

SET

inpatient_status = 'discharged',

discharge_date = NOW()

WHERE id = '$id'"
);

if ($query) {

    $visit_query = mysqli_query(

        $conn,

        "SELECT visit_id

    FROM inpatients

    WHERE id = '$id'"
    );

    $visit = mysqli_fetch_assoc($visit_query);

    mysqli_query(

        $conn,

        "UPDATE visits

    SET visit_status = 'completed'

    WHERE id = '" . $visit['visit_id'] . "'"
    );

    echo "Pasien berhasil dipulangkan";

} else {

    echo "Gagal memulangkan pasien";
}
?>