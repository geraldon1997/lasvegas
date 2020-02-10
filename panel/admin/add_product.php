<?php
include '../../links/db.php';

if (isset($_POST['add_product'])) {
    if (!empty($_POST['p_name'])) {
        if (!empty($_POST['p_type'])) {
            if (!empty($_POST['p_desc'])) {
                // if (!empty($_POST['exp_date'])) {
                if (!empty($_POST['p_quantity'])) {
                    // if(!empty($_POST['supplier'])){
                    if (!empty($_POST['cp'])) {
                        if (!empty($_POST['sp'])) {
                            $create_table_products=mysqli_query(
                                $con,
                                "CREATE TABLE IF NOT EXISTS products 
                            (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `product_name` varchar(100) NOT NULL,
                                `product_type` varchar(100) NOT NULL,
                                `product_description` varchar(40) NOT NULL,
                                `product_expiry_date` date NOT NULL,
                                `new_quantity` int(11) NOT NULL,
                                `current_quantity` int(11) NOT NULL,
                                `total_quantity` int(11) NOT NULL,
                                `product_supplier` varchar(40) NOT NULL,
                                `cost_price` int(11) NOT NULL,
                                `selling_price` int(11) NOT NULL,
                                `date_added` varchar(10) NOT NULL,
                                PRIMARY KEY (`id`)
                            ) "
                            );

                            if ($create_table_products) {
                                $pn=mysqli_real_escape_string($con, $_POST['p_name']);
                                $pt=mysqli_real_escape_string($con, $_POST['p_type']);
                                $pd=mysqli_real_escape_string($con, $_POST['p_desc']);
                                // $ed=mysqli_real_escape_string($con, $_POST['exp_date']);
                                $pq=mysqli_real_escape_string($con, $_POST['p_quantity']);
                                // $su=mysqli_real_escape_string($con, $_POST['supplier']);
                                $cp=mysqli_real_escape_string($con, $_POST['cp']);
                                $sp=mysqli_real_escape_string($con, $_POST['sp']);
                                $da=date('d/m/Y');
                                $sql = "INSERT INTO products (
                                        product_name,product_type,product_description,total_quantity,cost_price,selling_price,date_added) 
                                    VALUES (
                                        '$pn', '$pt', '$pd', '$pq', '$cp', '$sp', '$da') ";
                                $put_into_products=mysqli_query($con, $sql);

                                if ($put_into_products) {
                                    echo "<div class='alert alert-success'>
                                                    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                                    <span class='text-center'>product added successfully</span>
                                                </div>";
                                } else {
                                    echo    "<div class='alert alert-danger'>
                                                        <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                                        <span class='text-center'>product not added</span>
                                                    </div>";
                                }
                            }
                        }
                    }
                    // }
                }
                // }
            }
        }
    }
}
