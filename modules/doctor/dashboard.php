<?php

include '../../middleware/doctor_only.php';
include '../../config/database.php';
$total_queue = mysqli_fetch_assoc(

    mysqli_query(

        $conn,

        "SELECT COUNT(*) as total

FROM visits

WHERE visit_status = 'waiting_doctor'"
    )

);

$query = mysqli_query(

    $conn,

    "SELECT visits.*, patients.full_name, visits.is_lab_return

FROM visits

JOIN patients
ON visits.patient_id = patients.id

WHERE visit_status = 'waiting_doctor'"
);

$waiting_doctor = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_doctor'"
    )
);

$waiting_lab = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_lab'"
    )
);

$waiting_pharmacy = mysqli_num_rows(

    mysqli_query(

        $conn,

        "SELECT * FROM visits

        WHERE visit_status = 'waiting_pharmacy'"
    )
);

include '../../templates/header.php';

include '../../templates/navbar.php';

?>

<?php if (isset($_GET['success'])) { ?>

    <div

    id="success-popup"

    style="

    position: fixed;

    top: 50%;

    left: 50%;

    transform: translate(-50%, -50%);

    background: rgba(46, 204, 113, 0.92);

    color: white;

    padding: 22px 40px;

    border-radius: 14px;

    font-size: 20px;

    font-weight: bold;

    z-index: 999999;

    box-shadow: 0 10px 25px rgba(0,0,0,0.2);

    ">

        Assessment dokter berhasil disimpan

    </div>

    <script>

        setTimeout(function() {

            const popup =
            document.getElementById(
                'success-popup'
            );

            if (popup) {

                popup.remove();
            }

        }, 2000);

    </script>

<?php } ?>

<h1>Dashboard Dokter</h1>
<div class="stats-grid">

    <div class="stat-card purple">

        <h2><?= $waiting_doctor; ?></h2>

        <p>Waiting Doctor</p>

    </div>

    <div class="stat-card red">

        <h2><?= $waiting_lab; ?></h2>

        <p>Waiting Lab</p>

    </div>

    <div class="stat-card green">

        <h2><?= $waiting_pharmacy; ?></h2>

        <p>Waiting Pharmacy</p>

    </div>

</div>
<div class="form-card">

    <h3>

        Total Antrean Dokter:
        <?= $total_queue['total']; ?>

    </h3>

    <p>

        Login sebagai:
        <?= $_SESSION['name']; ?>

    </p>

    <hr>
</div>

<div class="table-container">

    <table>

        <tr>
            <th>Nama Pasien</th>
            <th>Tanggal Visit</th>
            <th>Status</th>
            <th>Aksi</th>
        </tr>

        <?php while ($visit = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td><?= $visit['full_name']; ?></td>

                <td><?= $visit['visit_date']; ?></td>

                <td>

                    <?php

                    $status = $visit['visit_status'];

                    $badge = 'badge-gray';

                    if ($status == 'waiting_nurse') {

                        $badge = 'badge-orange';

                    } elseif ($status == 'waiting_doctor') {

                        $badge = 'badge-purple';

                    } elseif ($status == 'waiting_lab') {

                        $badge = 'badge-red';

                    } elseif ($status == 'completed') {

                        $badge = 'badge-green';
                    }

                    ?>

                    <span class="badge <?= $badge; ?>">

                        <?= $status; ?>

                    </span>

                </td>

                <td>

                    <?php if ($visit['is_lab_return'] == 1) { ?>

                        <a class="action-btn" href="lab_review.php?id=<?= $visit['id']; ?>">

                            Lihat Hasil Lab

                        </a>

                    <?php } else { ?>

                        <a class="action-btn" href="assessment.php?id=<?= $visit['id']; ?>">

                            Assessment Dokter

                        </a>

                    <?php } ?>

                </td>

            </tr>

        <?php } ?>

    </table>
</div>

<?php

include '../../templates/footer.php';

?>