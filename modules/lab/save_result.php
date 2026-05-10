<?php

include '../../helpers/log_activity.php';
session_start();

include '../../config/database.php';

$lab_order_id = $_POST['lab_order_id'];

$file_name = '';

if (!empty($_FILES['result_file']['name'])) {

    $file_name =
        time() . '_' .
        $_FILES['result_file']['name'];

    move_uploaded_file(

        $_FILES['result_file']['tmp_name'],

        '../../assets/uploads/lab_results/' . $file_name
    );
}

$query = mysqli_query(

    $conn,

    "INSERT INTO lab_results (

    lab_order_id,
    result_file

    )

    VALUES (

    '$lab_order_id',
    '$file_name'

    )"
);

if ($query) {

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

        'Mengupload hasil lab order ID ' . $lab_order_id
    );

    $_SESSION['success'] =

        "Hasil lab berhasil disimpan";

    header("Location: dashboard.php");

    exit;

} else {

    echo "Gagal menyimpan";
}
?>