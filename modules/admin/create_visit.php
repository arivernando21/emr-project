<?php

include '../../config/database.php';

$patient_id = $_GET['id'];

$date = date('Y-m-d');

$count_query = mysqli_query(

    $conn,

    "SELECT COUNT(*) as total

FROM visits

WHERE DATE(visit_date) = '$date'"
);

$count = mysqli_fetch_assoc($count_query);

$queue_number =
    'A-' . str_pad(
        $count['total'] + 1,
        3,
        '0',
        STR_PAD_LEFT
    );

$query = mysqli_query(
    $conn,

    "INSERT INTO visits (
        patient_id,
        complaint,
        visit_status,
        queue_number
    )

    VALUES (
        '$patient_id',
        '',
        'waiting_nurse',
        '$queue_number'
    )"
);

if ($query) {

    echo "Visit berhasil dibuat";

} else {

    echo "Gagal membuat visit";
}
?>