<?php
namespace Sell;

class Sell
{
    public $con;
    public $user;
    public $invoice;
    public $date;
    public $sold;
    public $amount;
    public $item;
    public $tq;
    

    public function __construct($con)
    {
        if (isset($_GET['sales_person']) && isset($_GET['invoice'])) {
            $this->user = mysqli_real_escape_string($con, $_GET['sales_person']);
            $this->invoice = mysqli_real_escape_string($con, $_GET['invoice']);
            $this->date = date('Y-m-d');
            $this->con = $con;

            $this->createSales();
            $this->fetchCart();
            $this->addSales();
            $this->fetchProducts();
            $this->updatequantity();
            $this->deleteCart();
            header('location:index.php');
        }
    }
    public function fetchCart()
    {
        $sql1 = "SELECT * FROM cart WHERE sales_person = '$this->user' ";
        $get_cart = mysqli_query($this->con, $sql1);
        while ($row = mysqli_fetch_assoc($get_cart)) {
            $this->item=mysqli_real_escape_string($this->con, $row['item']);
            $this->sold=mysqli_real_escape_string($this->con, $row['quantity']);
            $this->amount=mysqli_real_escape_string($this->con, $row['price']);
        }
    }

    public function addSales()
    {
        $sql2="INSERT INTO sales
        SET invoice='$this->invoice', 
            user='$this->user',
            products_sold='$this->item',
            sold_quantity='$this->sold',
            amount_sold='$this->amount',
            date_sold='$this->date' ";
        mysqli_query($this->con, $sql2);
    }

    public function updatequantity()
    {
        $cq = $this->tq - $this->sold;
        $sql4="UPDATE products SET total_quantity = '$cq' WHERE product_type = '$this->item' ";
        $update = mysqli_query($this->con, $sql4);
    }

    public function deleteCart()
    {
        $delete_cart=mysqli_query($this->con, "DELETE FROM cart WHERE sales_person='$this->user' ");
    }

    public function createSales()
    {
        $sql= "CREATE TABLE IF NOT EXISTS sales
    ( id INT PRIMARY KEY AUTO_INCREMENT, invoice VARCHAR(20), user VARCHAR(20),
      products_sold VARCHAR(40), sold_quantity INT,
      amount_sold INT, date_sold VARCHAR(10) ) ";
        mysqli_query($this->con, $sql);
    }
 
    public function fetchProducts()
    {
        $sql3="SELECT * FROM products WHERE product_type='$this->item' ";
        $get_from_products=mysqli_query($this->con, $sql3);
        while ($row = mysqli_fetch_assoc($get_from_products)) {
            $this->tq = mysqli_real_escape_string($this->con, $row['total_quantity']);
        }
    }
}
