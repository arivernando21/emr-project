<?php

include '../../config/database.php';

$lab_order_id = $_GET['id'];

?>

<!DOCTYPE html>
<html>

<head>
    <title>Hasil Lab</title>
</head>

<body>

    <h1>Input Hasil Lab</h1>

    <form action="save_result.php" method="POST" enctype="multipart/form-data">

        <input type="hidden" name="lab_order_id" value="<?= $lab_order_id; ?>">

        <button type="submit">

            Simpan Hasil

        </button>

    </form>

</body>

</html>