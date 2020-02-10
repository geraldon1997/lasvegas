<?php
include 'layouts/master.php';
include '../../config.php';
include 'search_items.php';
?>


<?php startblock('content') ?>
<div class="row">
<div class="col-md-7 pull-left">
<?php include 'cart.php'; ?>
<?php include 'del_cart.php'; ?>
 
</div>

<div class="col-md-5 pull-right">

  <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" class="">
    
    <div class="form-group" >
      <div class="input-group" >
        <span class="input-group-addon" >
          <span class="glyphicon glyphicon-search" ></span>   
        </span>
        <input type="search" id="search" name="search" class="form-control" placeholder="search for items" autofocus>
      </div>
    </div>

    <!-- <input type="submit" value="search" name="search" class="btn btn-primary btn-block" > -->

  </form>
  </div>
  </div>
<hr>
<div class="row col-md-12 text-center">
  <table class="table table-bordered table-striped">

    <th>Product</th>
    <th>Available Quantity</th>
    <th>Price</th>
    <th>Qunatity to be sold</th>
    <th>Action</th>

    <?php if (isset($_POST['search'])) {
        foreach ($view as $item) : ?>
    <tr>
    <form action="" method="post" >
      <td style="width:400px;"><input type="text" name="it" id="" class="form-control text-center" value="<?php echo $item['product_type']; ?>"></td>
      <td><?php
        if ($item['total_quantity'] < 10) {
            echo "<b style='color:red;'>".$item['total_quantity']."</b>" ;
        } elseif ($item['total_quantity'] > 9) {
            echo "<b style='color:green;'>".$item['total_quantity']."</b>";
        } else {
            echo "<b style='color:red;'>Out of Stock</b>";
        }
        ?></td>
      <td><input type="number" name="sp" id="" class="form-control text-center" value="<?php echo $item['selling_price']; ?>"></td>
      <td><input type="number" name="qo" id="" class="form-control text-center" max="<?php echo $item['total_quantity']; ?>" required ></td>
      <td><input type="submit" value="add to cart" name="add_to_cart" class="btn btn-primary"></td>
    </form>
    </tr>
        <?php endforeach ;
    }
    ?>
  </table>
  </div>
  


 

<style>
    .link:hover{
        text-decoration: none;
    }
</style>

<!-- <script>
  $('input#search').keyup(function(e){
    val = $(this).val();
    $.ajax({
      url: '/bica/panel/user/search_items.php',
      type: 'POST',
      data : {search : val},
      success:function(data){
        $('div table tr#res').html(data);
      }
    })
  })
</script> -->


<?php endblock() ?>

