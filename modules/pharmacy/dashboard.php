<?php

include '../../middleware/auth.php';
include '../../config/database.php';
include '../../templates/header.php';
include '../../templates/navbar.php';

$query = mysqli_query(

    $conn,

    "SELECT

    visits.id AS visit_id,
    patients.full_name,
    visits.visit_date,

    GROUP_CONCAT(
        medicines.medicine_name
        SEPARATOR ', '
    ) AS medicines

    FROM prescriptions

    JOIN visits
    ON prescriptions.visit_id = visits.id

    JOIN patients
    ON visits.patient_id = patients.id

    JOIN medicines
    ON prescriptions.medicine_id = medicines.id

    WHERE visits.visit_status = 'waiting_pharmacy'

    GROUP BY visits.id

    ORDER BY visits.visit_date DESC"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard Farmasi</title>
</head>

<body>

    <h1>Dashboard Farmasi</h1>
    <div class="form-card">

        <table>

            <tr>

                <th>Pasien</th>
                <th>Daftar Obat</th>
                <th>Aksi</th>

            </tr>

            <?php while ($pharmacy = mysqli_fetch_assoc($query)) { ?>

                <tr>

                    <td><?= $pharmacy['full_name']; ?></td>

                    <td>

                        <?= $pharmacy['medicines']; ?>

                    </td>

                    <td>

                        <div class="action-group">

                            <a href="complete_visit.php?id=<?= $pharmacy['visit_id']; ?>"
                                class="action-btn table-btn green-btn">

                                Obat Diserahkan

                            </a>

                            <button type="button" class="action-btn table-btn"
                                onclick="printPrescription(<?= $pharmacy['visit_id']; ?>)">

                                Cetak Resep

                            </button>

                        </div>

                    </td>

                </tr>

            <?php } ?>

        </table>
    </div>

    <script>

        function printPrescription(visitId) {

            const iframe =
                document.createElement('iframe');

            iframe.style.display = 'none';

            iframe.src =
                'print_prescription.php?id=' + visitId;

            document.body.appendChild(iframe);

            iframe.onload = function () {

                iframe.contentWindow.focus();

                iframe.contentWindow.print();
            };
        }

    </script>

    <?php

    include '../../templates/footer.php';

    ?>
</body>

</html>