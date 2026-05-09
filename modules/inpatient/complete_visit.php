<?php

include '../../config/database.php';

$visit_id = $_GET['visit_id'];

mysqli_query(

    $conn,

    "UPDATE visits

    SET visit_status = 'completed'

    WHERE id = '$visit_id'"
);

header("Location: dashboard.php");

?>