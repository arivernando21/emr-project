<?php

include '../../config/database.php';

$visit_id = $_GET['id'];

$patient_query = mysqli_query(
    $conn,
    "SELECT 
        patients.medical_record_number,
        patients.nik,
        patients.full_name,
        patients.gender,
        patients.birth_date,
        patients.phone,
        patients.address

    FROM visits

    JOIN patients
    ON visits.patient_id = patients.id

    WHERE visits.id = '$visit_id'"
);

$patient = mysqli_fetch_assoc($patient_query);

$poli_query = mysqli_query(
    $conn,
    "SELECT * FROM poli"
);

$doctor_query = mysqli_query(
    $conn,
    "SELECT doctors.id, users.name

    FROM doctors

    JOIN users
    ON doctors.user_id = users.id"
);

include '../../templates/header.php';

include '../../templates/navbar.php';
?>



<h1>Assessment Perawat</h1>

<div class="form-card">

    <h2>Data Pasien</h2>

    <p>
        <strong>No Rekam Medis:</strong>
        <?= $patient['medical_record_number']; ?>
    </p>

    <p>
        <strong>NIK:</strong>
        <?= $patient['nik']; ?>
    </p>

    <p>
        <strong>Nama Lengkap:</strong>
        <?= $patient['full_name']; ?>
    </p>

    <p>
        <strong>Jenis Kelamin:</strong>
        <?= $patient['gender']; ?>
    </p>

    <p>
        <strong>Tanggal Lahir:</strong>
        <?= $patient['birth_date']; ?>
    </p>

    <p>
        <strong>No HP:</strong>
        <?= $patient['phone']; ?>
    </p>

    <p>
        <strong>Alamat:</strong>
        <?= $patient['address']; ?>
    </p>

    <hr><br>

        <form action="save_assessment.php" method="POST">

            <input type="hidden" name="visit_id" value="<?= $visit_id; ?>">

            <h3>Vital Sign</h3>

            <label>Tekanan Darah</label><br>
            <input type="text" name="blood_pressure" required><br><br>

            <label>Suhu</label><br>
            <input type="text" name="temperature" required><br><br>

            <label>Nadi</label><br>
            <input type="text" name="pulse" required><br><br>

            <label>Respirasi</label><br>
            <input type="text" name="respiration" required><br><br>

            <h3>SOAP</h3>

            <label>Subjective</label><br>
            <textarea name="subjective" required></textarea><br><br>

            <label>Objective</label><br>
            <textarea name="objective" required></textarea><br><br>

            <label>Assessment</label><br>
            <textarea name="assessment" required></textarea><br><br>

            <label>Plan</label><br>
            <textarea name="plan" required></textarea><br><br>

            <h3>Triase</h3>

            <select name="triage_level">

                <option value="low">Low</option>
                <option value="medium">Medium</option>
                <option value="high">High</option>
                <option value="emergency">Emergency</option>

            </select>

            <br><br>

            <h3>Poli Tujuan</h3>

            <select name="assigned_poli_id">

                <?php while ($poli = mysqli_fetch_assoc($poli_query)) { ?>

                    <option value="<?= $poli['id']; ?>">

                        <?= $poli['poli_name']; ?>

                    </option>

                <?php } ?>

            </select>

            <br><br>

            <h3>Dokter Tujuan</h3>

            <select name="assigned_doctor_id">

                <?php while ($doctor = mysqli_fetch_assoc($doctor_query)) { ?>

                    <option value="<?= $doctor['id']; ?>">

                        <?= $doctor['name']; ?>

                    </option>

                <?php } ?>

            </select>

            <br><br>

            <button type="submit">

                Simpan Assessment

            </button>

        </form>
</div>

<?php

include '../../templates/footer.php';

?>