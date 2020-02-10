<?php

include '../../links/db.php';

$err = array();

if (isset($_POST['add_to_cart'])) {
        $it = validate($_POST['it']);
        $sp = validate($_POST['sp']);
        $qo = validate($_POST['qo']);

        $create=mysqli_query($con, "CREATE TABLE IF NOT EXISTS cart (id INT AUTO_INCREMENT PRIMARY KEY, sales_person varchar(10), item varchar(20), quantity INT, price INT) ");
        $sp = $qo * $sp;
        $sql = "INSERT INTO cart (sales_person,item,quantity,price) VALUES ('$user','$it','$qo','$sp') ";
        $cart=mysqli_query($con, $sql);

    if ($cart) {
            include 'view_cart.php';
    } else {
            include 'view_cart.php';
    }
} else {
    include 'view_cart.php';
}

function validate($add)
{
    $add=htmlspecialchars($add);
    return $add;
}
