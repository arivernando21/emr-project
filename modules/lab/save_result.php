<?php

include '../../config/database.php';

$lab_order_id = $_POST['lab_order_id'];

$result_value = $_POST['result_value'];

$result_notes = $_POST['result_notes'];

$result_status = $_POST['result_status'];

$query = mysqli_query(

    $conn,

    "INSERT INTO lab_results (

lab_order_id,
result_value,
result_notes,
result_status

)

VALUES (

'$lab_order_id',
'$result_value',
'$result_notes',
'$result_status'

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

    SET visit_status = 'lab_result_ready'

    WHERE id = '" . $visit['visit_id'] . "'"
    );

    echo "Hasil lab berhasil disimpan";

} else {

    echo "Gagal menyimpan";
}
?>