<?php

include '../../links/db.php';

$get_from_cart=mysqli_query($con, "SELECT * FROM cart WHERE sales_person='$user' ");
                        echo "<table class='table table-bordered table-condensed table-striped'>";
                        echo "<th>items</th>";
                        echo "<th>quantity</th>";
                        echo "<th>price</th>";
                        echo "<th>option</th>";
while ($row=mysqli_fetch_assoc($get_from_cart)) {
    $it=mysqli_real_escape_string($con, $row['id']);
    $item=mysqli_real_escape_string($con, $row['item']);
    $quantity=mysqli_real_escape_string($con, $row['quantity']);
    $price=mysqli_real_escape_string($con, $row['price']);

    echo "<tr>";
    echo "<td>".$item."</td>";
    echo "<td>".$quantity."</td>";
    echo "<td>".number_format($price)."</td>";
    echo "<td><a href='del_cart.php?id=$it' class='btn btn-xs btn-danger'><i class='fa fa-trash'></i> delete item</a></td>";
    echo "</tr>";
}

                        $t=mysqli_query($con, "SELECT SUM(price) as tt FROM cart WHERE sales_person='$user' ");
while ($row=mysqli_fetch_assoc($t)) {
    $sum = $row['tt'];

    echo "<tr>";
    echo "<td colspan='2'><b>TOTAL</b></td>";
    echo "<td colspan='2'><b>".number_format($sum)."</b></td>" ;
    echo "</tr>";
}
                        echo "</table>";
                        
if (mysqli_num_rows($get_from_cart) < 1) {
} else {
    $invoice=rand(111111, 999999);
    echo "<a href='receipt.php?sales_person=$user&invoice=$invoice' class='fa fa-send btn btn-success btn-block'> SELL</a>";
}
