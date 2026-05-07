<?php

include '../../config/database.php';

$query = mysqli_query($conn, "SELECT * FROM patients");

?>

<!DOCTYPE html>
<html>

<head>
    <title>Patients</title>
</head>

<body>

    <h1>Daftar Pasien</h1>

    <a href="add_patient.php">Tambah Pasien</a>

    <br><br>

    <table border="1" cellpadding="10">

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

</body>

</html>