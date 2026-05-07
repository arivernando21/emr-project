<?php

include '../../config/database.php';

$visit_id = $_POST['visit_id'];

$anamnesis = $_POST['anamnesis'];
$physical_exam = $_POST['physical_exam'];
$diagnosis = $_POST['diagnosis'];

$icd_id = $_POST['icd_id'];

$procedure_icd9_id =
$_POST['procedure_icd9_id'];

$doctor_plan = $_POST['doctor_plan'];

$treatment_status = $_POST['treatment_status'];

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
2,
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

    if ($treatment_status == 'lab_request') {
        $doctor_assessment_id = mysqli_insert_id($conn);

        mysqli_query(

            $conn,

            "INSERT INTO lab_orders (

visit_id,
doctor_assessment_id,
order_notes

)

VALUES (

'$visit_id',
'$doctor_assessment_id',
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

    echo "Assessment dokter berhasil";

} else {

    echo "Gagal menyimpan";
}
?>