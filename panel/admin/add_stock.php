<?php

if (isset($_POST['addstock']) && !empty($_POST['nstock']) && !empty($_POST['pid'])) {
    $nstock=$_POST['nstock'];
    $pid=$_POST['pid'];
    $sql="SELECT total_quantity FROM products WHERE id='$pid' ";
    $g=mysqli_query($con, $sql);
    while ($row=mysqli_fetch_assoc($g)) {
        $aq = $row['total_quantity'];
        $ns = $nstock + $aq;
        $sql = "UPDATE products SET total_quantity='$ns' WHERE id='$pid' ";
        $add=mysqli_query($con, $sql);
    }
}
