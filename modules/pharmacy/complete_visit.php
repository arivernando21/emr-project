<?php

session_start();

include '../../config/database.php';

include '../../helpers/log_activity.php';

$visit_id = $_GET['id'];

mysqli_query(

    $conn,

    "UPDATE visits

    SET visit_status = 'completed'

    WHERE id = '$visit_id'"
);

logActivity(

    $conn,

    $_SESSION['user_id'],

    'Menyelesaikan visit ID ' . $visit_id
);

header("Location: dashboard.php");