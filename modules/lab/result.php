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

    <form action="save_result.php" method="POST">

        <input type="hidden" name="lab_order_id" value="<?= $lab_order_id; ?>">

        <label>Hasil</label><br>

        <input type="text" name="result_value">

        <br><br>

        <label>Catatan</label><br>

        <textarea name="result_notes"></textarea>

        <br><br>

        <label>Status</label><br>

        <select name="result_status">

            <option value="normal">
                Normal
            </option>

            <option value="abnormal">
                Abnormal
            </option>

        </select>

        <br><br>

        <button type="submit">

            Simpan Hasil

        </button>

    </form>

</body>

</html>