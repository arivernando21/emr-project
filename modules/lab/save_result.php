<?php

include '../../helpers/log_activity.php';

session_start();

include '../../config/database.php';

$lab_order_id = $_POST['lab_order_id'];

$result_numbers = $_POST['result_number'];

$lab_service_ids = $_POST['lab_service_id'];

$normal_ranges = $_POST['normal_range'];

$result_units = $_POST['result_unit'];

$get_service = mysqli_query(

    $conn,

    "SELECT *

    FROM lab_services

    WHERE id = '$lab_service_id'"
);

$service = mysqli_fetch_assoc($get_service);

for ($i = 0; $i < count($lab_service_ids); $i++) {

    if (!empty($result_numbers[$i])) {

        mysqli_query(

            $conn,

            "INSERT INTO lab_results (

            lab_order_id,
            lab_service_id,
            result_number,
            result_unit,
            normal_range

            )

            VALUES (

            '$lab_order_id',
            '" . $lab_service_ids[$i] . "',
            '" . $result_numbers[$i] . "',
            '" . $result_units[$i] . "',
            '" . $normal_ranges[$i] . "'

            )"
        );
    }
}

if (true) {

    mysqli_query(

        $conn,

        "UPDATE lab_orders

        SET order_status = 'completed'

        WHERE id = '$lab_order_id'"
    );

    $visit_query = mysqli_query(

        $conn,

        "SELECT visit_id

        FROM lab_orders

        WHERE id = '$lab_order_id'"
    );

    $visit = mysqli_fetch_assoc($visit_query);

    mysqli_query(

        $conn,

        "UPDATE visits

        SET visit_status = 'waiting_doctor',
            is_lab_return = 1

        WHERE id = '" . $visit['visit_id'] . "'"
    );

    logActivity(

        $conn,

        $_SESSION['user_id'],

        'Menginput hasil lab order ID ' .
        $lab_order_id
    );

    $_SESSION['success'] =
        "Hasil lab berhasil disimpan";

    header("Location: dashboard.php");

    exit;

} else {

    echo "Gagal menyimpan hasil lab";
}
?>