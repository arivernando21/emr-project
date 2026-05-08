<?php

include '../../middleware/admin_only.php';

include '../../config/database.php';

$query = mysqli_query(

    $conn,

    "SELECT activity_logs.*,
users.name

FROM activity_logs

JOIN users
ON activity_logs.user_id = users.id

ORDER BY activity_logs.created_at DESC"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Activity Logs</title>
</head>

<body>

    <h1>Activity Logs</h1>

    <a href="dashboard.php">

        ← Dashboard

    </a>

    <hr>

    <table border="1" cellpadding="10">

        <tr>

            <th>User</th>
            <th>Aktivitas</th>
            <th>Waktu</th>

        </tr>

        <?php while ($log = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td>
                    <?= $log['name']; ?>
                </td>

                <td>
                    <?= $log['activity']; ?>
                </td>

                <td>
                    <?= $log['created_at']; ?>
                </td>

            </tr>

        <?php } ?>

    </table>

</body>

</html>