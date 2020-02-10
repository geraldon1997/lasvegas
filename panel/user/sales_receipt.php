<?php

include '../../links/db.php';
if (isset($_GET['sales_person']) && isset($_GET['invoice'])) {
    $usr=mysqli_real_escape_string($con, $_GET['sales_person']);
    $invoice=mysqli_real_escape_string($con, $_GET['invoice']);
    $sql="SELECT * FROM cart WHERE sales_person='$usr' ";
    $get=mysqli_query($con, $sql);

    echo "<a href='sell.php?sales_person=$usr&invoice=$invoice' class='btn btn-default'>Dashboard</a>";

    echo "<br><br><br>";
    echo "<div class='col-md-8 '>";

    echo "<div class='text-center' style='font-family:georgia;'>";
 
    echo "<p class='text-left'>".date('F d, Y').' | '.date('h:i:s').'&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Receipt :<b> #'.$invoice."</b></p>";
    echo "<img src='../../assets/img/logo.png' width='300px' >";
    echo "<h5 style='color:darkblue;'><b>LasVegas World Boutique</b></h5>";
    echo "<p>Grand favour Plaza, near ThankGodee filling Station, Nkwelle Ezunaka, Anambra State.</p>";
    echo "<h4><b>cashier : ".$usr."</b></h4>";

    echo "<table class='table'>";
    echo "<th class='text-center'>Items #</th>";
    echo "<th class='text-center'>Quantity</th>";
    echo "<th class='text-center'>Price</th>";

    while ($row=mysqli_fetch_assoc($get)) {
        $item=mysqli_real_escape_string($con, $row['item']);
        $qty=mysqli_real_escape_string($con, $row['quantity']);
        $price=mysqli_real_escape_string($con, $row['price']);


        echo "<tr>";
        echo "<td>".$item."</td>";
        echo "<td>".$qty."</td>";
        echo "<td>".number_format($price)."</td>";
        echo "</tr>";
    }
    echo "</table>";


    $t=mysqli_query($con, "SELECT SUM(price) as tt FROM cart WHERE sales_person='$usr' ");
    while ($row=mysqli_fetch_assoc($t)) {
        $total = $row['tt'];

        echo "<h4><b>TOTAL &nbsp &nbsp ".number_format($total)."</b></h4>";
        echo "<hr>";
        echo "<h5 id='h5'>NB: no refund of money after payment</h5>";
        echo "<br><br><br>";
        echo "<a class='btn btn-primary' onClick='window.print();' >print</a>";
        echo "</div>";
        echo "</div>";
    }
}
