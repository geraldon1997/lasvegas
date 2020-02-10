<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    
    <title>SUPERMARKET</title>

    <style>
        .login{
            background-color: whitesmoke;
        }
    </style>
  
</head>
<body style="background-color: #24292e;">



    <div class="col-md-4 offset-4 login">
    <div class="text-center">
    <?php include 'links/login.php'; ?>   
</div> 
        <a href="index.php"><img src="assets/img/logo.png" alt="SUPERMARKET" width="425" class="img-responsive"></a>
        <br><br>
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ;?>" method="post">
            
            <div class="form-group" id="box">
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user icon-color"></span>
                    </span>
                    <input autofocus type="text" name="user" id="" placeholder="username" class="form-control" title="username" Required>
                </div>
            </div>

            <div class="form-group" id="box">
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-lock icon-color"></span>
                    </span>
                    <input type="password" name="pass" id="" placeholder="password" class="form-control" title="password" Required>
                </div>
            </div>

            <div class="form-group text-center">

            <input type="submit" name="login" value="LOGIN" class="btn text-center" style="color: whitesmoke; background-color:indigo;">
            </div>
        </form>
        
    </div>

<!-- <footer class="navbar-fixed-bottom text-center"><h4><?php echo "&copy Orbit Brothers Communication ". date('Y'); ?></h4></footer> -->
</body>
</html>