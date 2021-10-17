<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>User login</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="utf-8">
	<meta name="" ="viewport" content="width=device-width, inital-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid"
    <div class="navbar-header">
        </div>
            <ul class="nav navbar-nav">
               <li><a href="index.php">HOME</a></li>
               <li><a href="books.php">BOOKS</a></li>
               <li><a href="feedback.php">FEEDBACK</a></li>
           </ul>
          <ul class="nav navbar-nav navbar-right">
          <li><a href="registration.php"><span class="glyphicon glyphicon-user"> Signup </span></a></li>
              <li><a href="User login.php"><span class="glyphicon glyphicon-log-in"> Login </span></a></li>
              <li><a href="User login.php"><span class="glyphicon glyphicon-log-out"> Logout </span></a></li>
             
           </ul>
        </div>
       </nav>

<header style ="height: 0px; margin-left: 0px;" >
	<div class="logo" >
        <img src="image/20.png" >
         
         
</header>
<section>
    <div class="gut_img">
        <br><br>
        <div class="buck1">
        <h1 style="text-align: center; font-size: 30px;font-family: 'Times New Roman', Times, serif;">E-LIFE LEARNER</h1><br>
        <h1 style="text-align: center; font-size: 25px;font-family: 'Times New Roman', Times, serif;">User Login</h1><br>
      <form name="login" action="" method="">
          <br>
          <div class="login">
          <input type="text" name="Username" placeholder="Username" required=""> <br><br>
          <input type="password" name="Password"  placeholder="Password" required> <br><br>
          <button>Sign In</button></div><br><br>
      

      </form>
      <p style="text-align: center; color:black;">
          <br><br>
          <a style="color: blue; " href="">Forgot Password</a><br><br>
         Don'thave account?&nbsp;<a style="text-align: center; color: #bf0fff; " href="registration.php"> Sign Up </a>
        </div>

    </div>

</section>
<br><br><br><br>
<p style="color: #bf0fff;">
    <br>
    @copyright 2021-2024
</p>
</body>
</html>