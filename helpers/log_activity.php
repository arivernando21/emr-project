<?php

function logActivity($conn, $user_id, $activity)
{

    mysqli_query(

        $conn,

        "INSERT INTO activity_logs (

    user_id,
    activity

    )

    VALUES (

    '$user_id',
    '$activity'

    )"
    );
}