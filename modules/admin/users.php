<?php

include '../../middleware/admin_only.php';
include '../../config/database.php';

$specializations = mysqli_query(

    $conn,

    "SELECT * FROM doctor_specializations"
);

$users = mysqli_query(

    $conn,

    "SELECT * FROM users
    ORDER BY id DESC"
);

include '../../templates/header.php';
include '../../templates/navbar.php';

?>

<h1>Kelola User</h1>

<?php if (isset($_GET['success'])) { ?>

    <div class="toast-success">

        User berhasil ditambahkan

    </div>

<?php } ?>

<div class="form-card">

    <form action="save_user.php" method="POST">

        <label>Nama</label>

        <input type="text" name="name" required>

        <br><br>

        <label>Email</label>

        <input type="email" name="email" required>

        <br><br>

        <label>Password</label>

        <input type="password" name="password" required>

        <br><br>

        <label>Role</label>

        <select name="role" id="role-select">

            <option value="nurse" selected>

                Nurse

            </option>

            <option value="doctor">

                Doctor

            </option>

        </select>

        <br><br>

        <div id="specialization-box" style="display:none;">

            <label>Spesialisasi Dokter</label>

            <select name="specialization_id">

                <?php while (
                    $spec =
                    mysqli_fetch_assoc($specializations)
                ) { ?>

                    <option value="<?= $spec['id']; ?>">

                        <?= $spec['specialization_name']; ?>

                    </option>

                <?php } ?>

            </select>

        </div>

        <br>

        <button type="submit">

            Simpan User

        </button>

    </form>

</div>

<br><br>

<div class="table-container">

    <table>

        <tr>

            <th>Nama</th>
            <th>Email</th>
            <th>Role</th>

        </tr>

        <?php while (
            $user =
            mysqli_fetch_assoc($users)
        ) { ?>

            <tr>

                <td><?= $user['name']; ?></td>

                <td><?= $user['email']; ?></td>

                <td><?= $user['role']; ?></td>

            </tr>

        <?php } ?>

    </table>

</div>

<script>

    const roleSelect =
        document.getElementById('role-select');

    const specializationBox =
        document.getElementById('specialization-box');

    roleSelect.addEventListener('change', () => {

        if (roleSelect.value == 'doctor') {

            specializationBox.style.display = 'block';

        } else {

            specializationBox.style.display = 'none';
        }
    });

</script>

<?php

include '../../templates/footer.php';

?>