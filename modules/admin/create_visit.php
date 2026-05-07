<?php

include '../../config/database.php';

$patient_id = $_GET['id'];

$query = mysqli_query(
    $conn,

    "INSERT INTO visits (
        patient_id,
        complaint,
        visit_status
    )

    VALUES (
        '$patient_id',
        '',
        'waiting_nurse'
    )"
);

if($query){

    echo "Visit berhasil dibuat";

} else {

    echo "Gagal membuat visit";
}
?>