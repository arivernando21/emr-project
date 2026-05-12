<?php

$current_page =
    basename($_SERVER['PHP_SELF']);

?>

<div class="navbar no-print">

    <?php if (isset($_SESSION['role'])) { ?>

        <?php if ($_SESSION['role'] == 'admin') { ?>

            <a href="../../modules/admin/dashboard.php" class="<?= $current_page == 'dashboard.php'
                ? 'active'
                : ''; ?>">

                Dashboard

            </a>

            <a href="../../modules/admin/patients.php" class="<?= in_array(

                $current_page,

                [
                    'patients.php',
                    'add_patient.php',
                    'patient_history.php',
                    'visit_detail.php'
                ]

            )

                ? 'active'
                : ''; ?>">

                Kelola Pasien

            </a>

            <a href="../../modules/admin/activity_logs.php" class="<?= $current_page == 'activity_logs.php'
                ? 'active'
                : ''; ?>">

                Activity Logs

            </a>

            <a href="../../modules/admin/users.php" class="<?= $current_page == 'users.php'
                ? 'active'
                : ''; ?>">

                Kelola User

            </a>

        <?php } ?>

        <?php if ($_SESSION['role'] == 'nurse') { ?>

            <a href="../../modules/nurse/dashboard.php" class="<?= in_array(

                $current_page,

                [
                    'dashboard.php',
                    'assessment.php'
                ]

            )

                ? 'active'
                : ''; ?>">

                Dashboard Nurse

            </a>

            <a href="../../modules/nurse/patients.php" class="<?= in_array(

                $current_page,

                [
                    'patients.php',
                    'patient_history.php',
                    'visit_detail.php'
                ]

            )

                ? 'active'
                : ''; ?>">

                Riwayat Medis

            </a>

        <?php } ?>

        <?php if ($_SESSION['role'] == 'doctor') { ?>

            <a href="../../modules/doctor/dashboard.php" class="<?= in_array(

                $current_page,

                [
                    'dashboard.php',
                    'assessment.php',
                    'lab_review.php'
                ]

            )

                ? 'active'
                : ''; ?>">

                Dashboard Doctor

            </a>

            <a href="../../modules/doctor/patients.php" class="<?= in_array(

                $current_page,

                [
                    'patients.php',
                    'patient_history.php',
                    'visit_detail.php'
                ]

            )

                ? 'active'
                : ''; ?>">

                Riwayat Medis

            </a>

        <?php } ?>

        <?php if ($_SESSION['role'] == 'inpatient') { ?>

            <a href="../../modules/inpatient/dashboard.php" class="<?= $current_page == 'dashboard.php'
                ? 'active'
                : ''; ?>">

                Dashboard

            </a>

        <?php } ?>

        <a href="../../auth/logout.php">

            Logout

        </a>

    <?php } ?>

</div>