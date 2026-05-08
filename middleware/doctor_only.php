<?php

include 'auth.php';

if($_SESSION['role'] != 'doctor'){

    echo "Akses ditolak";

    exit;
}