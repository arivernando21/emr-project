<?php

include '../../helpers/log_activity.php';
include '../../config/database.php';
session_start();

$visit_id = $_POST['visit_id'];

$anamnesis = $_POST['anamnesis'];
$physical_exam = $_POST['physical_exam'];
$diagnosis = $_POST['diagnosis'];

$icd_id = $_POST['icd_id'];

$procedure_icd9_id =
    $_POST['procedure_icd9_id'];

$doctor_plan = $_POST['doctor_plan'];

$treatment_status = $_POST['treatment_status'];

$medicine_ids = $_POST['medicine_id'];

$dosages = $_POST['dosage'];

$frequencies = $_POST['frequency'];

$durations = $_POST['duration'];

$medicine_notes = $_POST['medicine_notes'];

$doctor_query = mysqli_query(

    $conn,

    "SELECT id

    FROM doctors

    WHERE user_id = '" . $_SESSION['user_id'] . "'"
);

$doctor = mysqli_fetch_assoc($doctor_query);

$doctor_id = $doctor['id'];

$query = mysqli_query(

    $conn,

    "INSERT INTO doctor_assessments (

visit_id,
doctor_id,
anamnesis,
physical_exam,
diagnosis,
icd_id,
procedure_icd9_id,
doctor_plan,
treatment_status

)

VALUES (

'$visit_id',
'$doctor_id',
'$anamnesis',
'$physical_exam',
'$diagnosis',
'$icd_id',
'$procedure_icd9_id',
'$doctor_plan',
'$treatment_status'

)"
);

if ($query) {

    logActivity(

        $conn,

        $_SESSION['user_id'],

        'Membuat doctor assessment visit ID ' . $visit_id
    );

    $get_assessment = mysqli_query(

        $conn,

        "SELECT id

    FROM doctor_assessments

    ORDER BY id DESC

    LIMIT 1"
    );

    $assessment = mysqli_fetch_assoc($get_assessment);

    $assessment_id = $assessment['id'];

    for ($i = 0; $i < count($medicine_ids); $i++) {

        if (!empty($medicine_ids[$i])) {

            mysqli_query(

                $conn,

                "INSERT INTO prescriptions (

        visit_id,
        doctor_assessment_id,
        medicine_id,
        dosage,
        frequency,
        duration,
        notes

        )

        VALUES (

        '$visit_id',
        " . (int) $assessment_id . ",
        '" . $medicine_ids[$i] . "',
        '" . $dosages[$i] . "',
        '" . $frequencies[$i] . "',
        '" . $durations[$i] . "',
        '" . $medicine_notes[$i] . "'

        )"
            );
        }
    }


    if ($treatment_status == 'lab_request') {

        mysqli_query(

            $conn,

            "INSERT INTO lab_orders (

                        visit_id,
                        doctor_assessment_id,
                        order_notes

                        )

            VALUES (

                        '$visit_id',
                        '$assessment_id',
                        'Pemeriksaan laboratorium'

                        )"
        );

        mysqli_query(

            $conn,

            "UPDATE visits

        SET visit_status = 'waiting_lab'

        WHERE id = '$visit_id'"
        );

    } elseif ($treatment_status == 'inpatient') {

        mysqli_query(

            $conn,

            "INSERT INTO inpatients (

            visit_id,
            room_number,
            notes

            )

            VALUES (

            '$visit_id',
            'KAMAR-101',
            'Pasien memerlukan rawat inap'

            )"
        );

        mysqli_query(

            $conn,

            "UPDATE visits

        SET visit_status = 'inpatient'

        WHERE id = '$visit_id'"
        );

    } elseif ($treatment_status == 'observation') {

        mysqli_query(

            $conn,

            "UPDATE visits

        SET visit_status = 'observation'

        WHERE id = '$visit_id'"
        );

    } elseif ($treatment_status == 'referred') {

        mysqli_query(

            $conn,

            "UPDATE visits

        SET visit_status = 'referred'

        WHERE id = '$visit_id'"
        );

    } else {

        mysqli_query(

            $conn,

            "UPDATE visits

        SET visit_status = 'waiting_pharmacy'

        WHERE id = '$visit_id'"
        );
    }

    header(
        "Location: dashboard.php?success=1"
    );

    exit;

} else {

    echo "Gagal menyimpan";
}
?>