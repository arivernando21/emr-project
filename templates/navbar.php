<div class="navbar no-print">

    <?php if (isset($_SESSION['role'])) { ?>

        <?php if ($_SESSION['role'] == 'admin') { ?>

            <a href="../../modules/admin/dashboard.php">

                Dashboard

            </a>

            <a href="../../modules/admin/patients.php">

                Kelola Pasien

            </a>

            <a href="../../modules/admin/activity_logs.php">

                Activity Logs

            </a>

            <a href="../../modules/admin/users.php">

                Kelola User

            </a>

        <?php } ?>

        <?php if ($_SESSION['role'] == 'nurse') { ?>

            <a href="../../modules/nurse/dashboard.php">

                Dashboard Nurse

            </a>

        <?php } ?>

        <?php if ($_SESSION['role'] == 'doctor') { ?>

            <a href="../../modules/doctor/dashboard.php">

                Dashboard Doctor

            </a>

        <?php } ?>

        <?php if ($_SESSION['role'] == 'inpatient') { ?>

            <a href="../../modules/inpatient/dashboard.php">

                Dashboard

            </a>

        <?php } ?>

        <a href="../../auth/logout.php">

            Logout

        </a>

    <?php } ?>

</div>