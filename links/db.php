<?php

$con=mysqli_connect('127.0.0.1', 'root', '', 'supermarket');
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to database: " . mysqli_connect_error();
}
