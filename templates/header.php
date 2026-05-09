<?php

if (session_status() === PHP_SESSION_NONE) {

    session_start();
}

?>
<!DOCTYPE html>
<html>

<head>

    <title>EMR Rumah Sakit</title>

    <link rel="stylesheet" href="../../assets/css/style.css">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>

<body>

    <div class="container">

        <div class="app-header no-print">

            <h1>

                🏥 SIRS / EMR Rumah Sakit

            </h1>

            <p>

                Sistem Informasi Rekam Medis

            </p>

        </div>