<?php

include '../../config/database.php';

$inpatient_id = $_GET['id'];

$query = mysqli_query(

    $conn,

    "SELECT inpatients.*,
    visits.id as visit_id,
    patients.full_name

    FROM inpatients

    JOIN visits
    ON inpatients.visit_id = visits.id

    JOIN patients
    ON visits.patient_id = patients.id

    WHERE inpatients.id = '$inpatient_id'"
);

$data = mysqli_fetch_assoc($query);

include '../../templates/header.php';
include '../../templates/navbar.php';

?>

<h1>Discharge Pasien</h1>

<div class="form-card">

    <p>

        <b>Pasien:</b>
        <?= $data['full_name']; ?>

    </p>

    <p>

        <b>Kamar:</b>
        <?= $data['room_number']; ?>

    </p>

    <form action="save_discharge.php" method="POST">

        <input type="hidden" name="inpatient_id" value="<?= $data['id']; ?>">

        <input type="hidden" name="visit_id" value="<?= $data['visit_id']; ?>">

        <label>Catatan Pulang</label><br>

        <textarea name="notes" required></textarea>

        <br><br>

        <button type="submit">

            Discharge Pasien

        </button>

    </form>

</div>

<?php

include '../../templates/footer.php';

?>