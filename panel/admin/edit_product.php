<?php
include '../../links/db.php';

if (isset($_POST['edit_product'])) {
    if (!empty($_POST['p_name']) && !empty($_POST['p_type']) && !empty($_POST['p_desc'])) {
        if (!empty($_POST['exp_date']) && !empty($_POST['p_quantity'])) {
            if (!empty($_POST['cp']) && !empty($_POST['sp']) && !empty($_POST['id'])) {
                $id=mysqli_real_escape_string($con, $_POST['id']);
                $pn=mysqli_real_escape_string($con, $_POST['p_name']);
                $pt=mysqli_real_escape_string($con, $_POST['p_type']);
                $pd=mysqli_real_escape_string($con, $_POST['p_desc']);
                $ed=mysqli_real_escape_string($con, $_POST['exp_date']);
                $pq=mysqli_real_escape_string($con, $_POST['p_quantity']);
                $ps=mysqli_real_escape_string($con, $_POST['supplier']);
                $cp=mysqli_real_escape_string($con, $_POST['cp']);
                $sp=mysqli_real_escape_string($con, $_POST['sp']);
                

                
                 
                    $sql="UPDATE `products` SET `product_name`='$pn',`product_type`='$pt',
                        `product_description`='$pd',`product_expiry_date`='$ed',
                        `total_quantity`='$pq',`cost_price`='$cp',`selling_price`='$sp' 
                        WHERE `id`='$id' ";

                  
                if (mysqli_query($con, $sql)) {
                    header('location:'.$base_url.'products.php');
                }
            }
        }
    }
}
