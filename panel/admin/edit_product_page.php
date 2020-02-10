<?php include 'layouts/master.php';?>

<?php startblock('content') ?>

<div class="col-6 offset-3 text-center">
<h4 class="page-title">Edit Product</h4>
<form action="edit_product.php" method="post">

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class=""></span>
              </span>
              <input value="<?php echo $_GET['pn']; ?>" type="text" name="p_name" id="" class="form-control" title="product name" required>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class=""></span>
              </span>
              <input value="<?php echo $_GET['pt']; ?>" type="text" name="p_type" id="" class="form-control" title="product type" required>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class=""></span>
              </span>
              <input value="<?php echo $_GET['pd']; ?>" type="text" name="p_desc" id="" class="form-control" title="product description" required>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class=""></span>
              </span>
              <input value="<?php echo $_GET['ped']; ?>" type="date" name="exp_date" id="" class="form-control" title="product expiry date" required>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class="fa fa-expeditedssl"></span>
              </span>
              <input value="<?php echo $_GET['pq']; ?>" type="number" name="p_quantity" id="" class="form-control" title="product quantity" required>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class=""></span>
              </span>
              <input value="<?php echo $_GET['cp']; ?>" type="number" name="cp" id="" class="form-control" title="Cost price" required>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon">
                <span class=""></span>
              </span>
              <input value="<?php echo $_GET['sp']; ?>" type="number" name="sp" id="" class="form-control" title="Selling price" required>
            </div>
          </div>

          <input type="hidden" name="id" value="<?php echo $_GET['pid']; ?>">
          <input type="submit" name="edit_product" value="EDIT" class="btn btn-success">

        </form>
      </div>

</div>

      <?php endblock() ?>

