<?php

include '../../links/db.php';
include '../../config.php';

if (isset($_GET['id'])) {
    $it=mysqli_real_escape_string($con, $_GET['id']);

    $sql="DELETE FROM cart WHERE id='$it' ";
    $del=mysqli_query($con, $sql);
    if ($del === true) {
        header('location:'.$base_url.'panel/user');
    }
}
