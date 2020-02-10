<?php

include '../../links/db.php';

if (isset($_POST['search']) && !empty($_POST['search'])) {
    $search = trim($_POST['search']);

    $sql = "SELECT * FROM products 
    WHERE product_name LIKE '$search%' or product_type LIKE '$search%' or product_description LIKE '$search%' ";
    $view=mysqli_query($con, $sql);
}
