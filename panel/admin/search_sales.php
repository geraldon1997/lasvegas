<?php

include '../../links/db.php';

$alert_type = '';

$alert_message = '';

if (isset($_GET['search'])) {
    if (!empty($_GET['sales1']) && !empty($_GET['sales2'])) {
        $sales1=mysqli_real_escape_string($con, $_GET['sales1']);
        $sales2=mysqli_real_escape_string($con, $_GET['sales2']);
        

        $get_sales=mysqli_query($con, "SELECT * FROM sales WHERE date_sold BETWEEN '$sales1' AND '$sales2' ");
        
        echo "<table class='table table-bordered table-striped table-hover'>";
        echo "<th class='text-center'>cashier</th>";
        echo "<th class='text-center'>receipt no</th>";
        echo "<th class='text-center'>product sold</th>";
        echo "<th class='text-center'>quantity sold</th>";
        echo "<th class='text-center'>amount</th>";
        echo "<th class='text-center'>date sold</th>";
        echo "<th class='text-center'>profit/loss</th>";
        echo "<th class='text-center'>options</th>";
        
        if (mysqli_num_rows($get_sales) > 0) {
            while ($row=mysqli_fetch_assoc($get_sales)) {
                $id=mysqli_real_escape_string($con, $row['id']);
                $u=mysqli_real_escape_string($con, $row['user']);
                $p=mysqli_real_escape_string($con, $row['products_sold']);
                $q=mysqli_real_escape_string($con, $row['sold_quantity']);
                $a=mysqli_real_escape_string($con, $row['amount_sold']);
                $d=mysqli_real_escape_string($con, $row['date_sold']);
                $in=mysqli_real_escape_string($con, $row['invoice']);

                echo "<tr>";
                echo "<td>".$u."</td>";
                echo "<td>".$in."</td>";
                echo "<td>".$p."</td>";
                echo "<td>".$q."</td>";
                echo "<td>N ".$a."</td>";
                echo "<td>".$d."</td>";

                $pl=mysqli_query($con, "SELECT * FROM products ");
                while ($row=mysqli_fetch_assoc($pl)) {
                    $pn=$row['product_name'];
                    $pcp=$row['cost_price'];
                    $psp=$row['selling_price'];
                    if ($p =  $pn) {
                        $prcp=$pcp * $q;
                        $prsp=$psp * $q;
                        $pr=$prsp - $prcp;
                    }
                }
                if ($prsp > $prcp) {
                    echo "<td style='color:green;'>+ ".$pr."</td>";
                } elseif ($prsp == $prcp) {
                    echo "<td style='color:yellow;'> ".$pr."</td>";
                } elseif ($prsp < $prcp) {
                    echo "<td style='color:red;'>- ".$pr."</td>";
                }
        
                echo "<td>"."<a href='view_sale.php?invoice=$in' target='_blank' class='btn btn-info'><i class='fa fa-eye'></i> view</a>&nbsp"."&nbsp<a href='sales.php?id=$id' class='btn btn-danger'><i class='fa fa-trash'></i> delete</a>"."</td>";
                echo "</tr>";
            }
                $result=mysqli_query($con, "SELECT SUM(amount_sold) AS total FROM sales WHERE date_sold BETWEEN '$sales1' AND '$sales2' ");
                $row=mysqli_fetch_assoc($result);
                $total=$row['total'];

                $tg=mysqli_query($con, "SELECT SUM(sold_quantity) AS tg FROM sales WHERE date_sold BETWEEN '$sales1' AND '$sales2' ");
                $row=mysqli_fetch_array($tg);
                $tga=$psp - $pcp;
                $ttg=$row['tg'] * $tga;

                echo "<tr>";
                echo "<td colspan='4'><strong>Total</strong></td>";
                echo "<td>$total</td>";
                echo "<td></td>";
                echo "<td>$ttg</td>";
                echo "<td colspan='2'></td>";
                echo "</tr>";

                echo "</table>";
        }
    } else {
        $alert_type = 'warning';
        $alert_message = 'Search box cannot be empty';
        // echo "<div class='alert alert-warning'>
        //         <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
        //         <span class='text-center'>THE SEARCH BOX CANNOT BE EMPTY</span>
        //       </div>";
    }
} else {
    $alert_type = 'info';
    $alert_message = 'Fill the search box to get sales report';
        // echo "<div class='alert alert-info'>
        //         <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
        //         <span class='text-center'>FILL THE SEARCH BOX TO GET SALES REPORT</span>
        //       </div>";
}

// die($alert_message);
