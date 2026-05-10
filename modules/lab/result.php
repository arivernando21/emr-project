<?php

include '../../config/database.php';
include '../../templates/header.php';
include '../../templates/navbar.php';

$lab_order_id = $_GET['id'];

?>

<h1>Input Hasil Lab</h1>

<div class="form-card">

    <form action="save_result.php"
    method="POST"
    enctype="multipart/form-data">

        <input type="hidden"
        name="lab_order_id"
        value="<?= $lab_order_id; ?>">

        <label>Upload Hasil Lab</label>

        <input type="file"
        name="result_file"
        accept="image/*"
        required>

        <br><br>

        <button type="submit">

            Simpan Hasil

        </button>

    </form>

</div>

<?php

include '../../templates/footer.php';

?>