<?php

include '../../middleware/admin_only.php';
include '../../config/database.php';

$search = '';

if (isset($_GET['search'])) {

    $search = $_GET['search'];
}

$query = mysqli_query(

    $conn,

    "SELECT *

FROM patients

WHERE

full_name LIKE '%$search%'

OR

medical_record_number LIKE '%$search%'

OR

nik LIKE '%$search%'"
);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<h1>Daftar Pasien</h1>

<?php if (isset($_GET['success'])) { ?>

    <p class="alert-success" id="success-alert">

        Pasien berhasil ditambahkan

    </p>

<?php } ?>

<form method="GET" style="display:flex;
                                    gap:10px;
                                    align-items:center;">

    <input type="text" name="search" placeholder="Cari nama / no RM / NIK" value="<?= $search; ?>">

    <button type="submit">

        Cari

    </button>

</form>

<br>

<a href="add_patient.php" class="action-btn">

    Tambah Pasien

</a>

<br><br>

<div class="table-container">
    <table>

        <tr>
            <th>No RM</th>
            <th>Nama</th>
            <th>NIK</th>
            <th>Aksi</th>
        </tr>

        <?php while ($patient = mysqli_fetch_assoc($query)) { ?>

            <tr>
                <td><?= $patient['medical_record_number']; ?></td>
                <td><?= $patient['full_name']; ?></td>
                <td><?= $patient['nik']; ?></td>

                <td>

                    <a href="create_visit.php?id=<?= $patient['id']; ?>">

                        Buat Visit

                    </a>

                    |

                    <a href="patient_history.php?id=<?= $patient['id']; ?>">

                        Riwayat Medis

                    </a>

                </td>
            </tr>

        <?php } ?>

    </table>
</div>

<script>

    setTimeout(() => {

        const alert =
            document.getElementById('success-alert');

        if (alert) {

            alert.style.display = 'none';
        }

    }, 3000);

</script>
</div>

<?php

include '../../templates/footer.php';

?>