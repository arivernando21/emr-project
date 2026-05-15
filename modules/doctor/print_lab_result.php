<?php

include '../../config/database.php';

$visit_id = $_GET['id'];

$lab_query = mysqli_query(

    $conn,

    "SELECT lab_results.*,

    lab_services.service_name,
    lab_services.normal_value,
    lab_services.unit,

    patients.full_name,

    users.name as doctor_name

    FROM lab_results

    JOIN lab_services
    ON lab_results.lab_service_id =
    lab_services.id

    JOIN lab_orders
    ON lab_results.lab_order_id =
    lab_orders.id

    JOIN visits
    ON lab_orders.visit_id = visits.id

    JOIN patients
    ON visits.patient_id = patients.id

    LEFT JOIN doctor_assessments
    ON lab_orders.doctor_assessment_id =
    doctor_assessments.id

    LEFT JOIN doctors
    ON doctor_assessments.doctor_id =
    doctors.id

    LEFT JOIN users
    ON doctors.user_id = users.id

    WHERE visits.id = '$visit_id'"
);

$first = mysqli_fetch_assoc($lab_query);

?>

<!DOCTYPE html>
<html>

<head>

    <title>Hasil Lab</title>

    <style>
        body {

            font-family: 'Times New Roman', serif;

            background: white;

            padding: 20px;

            color: black;
        }

        .paper {

            width: 900px;

            margin: auto;
        }

        .header {

            display: flex;

            align-items: center;

            justify-content: space-between;

            border-bottom: 3px solid black;

            padding-bottom: 10px;
        }

        .header-center {

            text-align: center;

            flex: 1;
        }

        .header h2,
        .header h3,
        .header p {

            margin: 3px;
        }

        .title {

            text-align: center;

            font-size: 28px;

            color: #1565c0;

            font-weight: bold;

            margin: 20px 0;
        }

        .lab-table {

            width: 100%;

            border-collapse: collapse;
        }

        .lab-table th,
        .lab-table td {

            border: 1px solid black;

            padding: 10px;

            font-size: 15px;
        }

        .lab-table th {

            background: #f5f5f5;
        }

        .signature {

            margin-top: 80px;

            text-align: right;
        }

        @media print {

            button {

                display: none;
            }
        }
    </style>

</head>

<body>

    <div class="paper">

        <button onclick="window.print()">

            Cetak Hasil Lab

        </button>

        <div class="header">

            <div>

                <img src="../../assets/img/logoOI.png" width="80">

            </div>

            <div class="header-center">

                <h2>PEMERINTAH KABUPATEN OGAN ILIR</h2>

                <h3>DINAS KESEHATAN</h3>

                <h3>RUMAH SAKIT EMR</h3>

                <p>
                    Jl. Rumah Sakit No. 123
                </p>

            </div>

        </div>

        <div class="title">

            FORM LAPORAN HASIL PEMERIKSAAN LABORATORIUM

        </div>

        <p>

            <b>Nama Pasien:</b>

            <?= $first['full_name']; ?>

        </p>

        <p>

            <b>Dokter Pengirim:</b>

            <?= $first['doctor_name']; ?>

        </p>

        <table class="lab-table">

            <tr>

                <th>Jenis Pemeriksaan</th>
                <th>Satuan</th>
                <th>Nilai Rujukan</th>
                <th>Hasil</th>

            </tr>

            <?php

            mysqli_data_seek($lab_query, 0);

            while ($lab = mysqli_fetch_assoc($lab_query)) {

                ?>

                <tr>

                    <td>

                        <?= $lab['service_name']; ?>

                    </td>

                    <td>

                        <?= $lab['unit']; ?>

                    </td>

                    <td>

                        <?= $lab['normal_value']; ?>

                    </td>

                    <td>

                        <?= $lab['result_number']; ?>

                    </td>

                </tr>

            <?php } ?>

        </table>

        <div class="signature">

            <p>

                Ogan Ilir,
                <?= date('d-m-Y'); ?>

            </p>

            <br><br><br>

            <p>

                Petugas Laboratorium

            </p>

        </div>

    </div>

</body>

</html>