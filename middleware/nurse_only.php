<?php

include 'auth.php';

if($_SESSION['role'] != 'nurse'){

    echo "Akses ditolak";

    exit;
}