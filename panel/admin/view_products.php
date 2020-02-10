<?php
include '../../links/db.php';

$view_products=mysqli_query($con, "SELECT * FROM products");
    
echo "<table class='table table-striped table-bordered table-hover'>";
echo "<th class='text-center'>Product name</th>";
echo "<th class='text-center'>description</th>";
echo "<th class='text-center' style='width:150px;'>expiry date</th>";
echo "<th class='text=center'>price</th>";
echo "<th class='text-center' style='width:150px;'>available quantity</th>";
echo "<th class='text-center'>options</th>";
    
while ($row=mysqli_fetch_assoc($view_products)) {
    $id=mysqli_real_escape_string($con, $row['id']);
    $pn=mysqli_real_escape_string($con, $row['product_name']);
    $pt=mysqli_real_escape_string($con, $row['product_type']);
    $pd=mysqli_real_escape_string($con, $row['product_description']);
    $ped=mysqli_real_escape_string($con, $row['product_expiry_date']);
    $tq=mysqli_real_escape_string($con, $row['total_quantity']);
    $ps=mysqli_real_escape_string($con, $row['product_supplier']);
    $da=mysqli_real_escape_string($con, $row['date_added']);
    $cp=mysqli_real_escape_string($con, $row['cost_price']);
    $sp=mysqli_real_escape_string($con, $row['selling_price']);

    
    echo "<tr>";
    echo "<td>".$pt."</td>";
    echo "<td>".$pd."</td>";
    echo "<td>".$ped."</td>";
    echo "<td>".number_format($sp)."</td>";
  
    if ($tq < 10) {
        echo "<td style='color:red;'>".$tq."</td>";
    } elseif ($tq < 1) {
        echo "<td style='color:red;'>out of stock</td>";
    } else {
        echo "<td style='color:green;'>".$tq."</td>";
    }
    
    echo "<td>
        <a href='/supermarket/panel/admin/edit_product_page.php?pid=$id&pn=$pn&pt=$pt&pd=$pd&ped=$ped&pq=$tq&cp=$cp&sp=$sp' title='edit product'><i class='fa fa-edit btn btn-primary'> edit product</i></a>
        <hr>
        <a href='#addstock' class='addstock' data-toggle='modal' onclick='passId($id)' title='add new stock'><i class='fa fa-external-link btn btn-success'> add stock</i></a>
        <hr>
        <a href='products.php?delete_product_id=$id' target='_blank' title='delete product'><i class='fa fa-trash btn btn-danger' style='color:white'> delete product</i></a>
        </td>";
    echo "</tr>";
}
    echo "</table>";
