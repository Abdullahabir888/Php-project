<?php 
	include "connection.php";
	session_start();
 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Profile</title>
 	<style type="text/css">
 		.wrapper
 		{
 			width: 300px;
 			margin: 0 auto;
 			color: black;
 		}
 	</style>
 </head>
 <body style="background-color: skyblue ; ">
 	<div class="container">
 		<form action="" method="post">
		 <button class="btn btn-default" style="float: right; width: 120x; height: 40px; border-radius: 30px; color:#4568dc; background-color: transparent ;" name="submit1">Edit Profile</button>
 		</form>
 		<div class="wrapper">
 			<?php

 				if(isset($_POST['submit1']))
 				{
 					?>
 						<script type="text/javascript">
 							window.location="edit.php"
 						</script>
 					<?php
 				}
 				$q=mysqli_query($db,"SELECT * FROM `user` where Username='$_SESSION[user]' ;");
 			?>
 			<h2 style="text-align: center;">Profile</h2>

 			<?php
 				$row=mysqli_fetch_assoc($q);

 				echo "<div style='text-align: center'>
 					<img class='img-circle profile-img' height=110 width=120 src='image/".$_SESSION['de']."'>
 				</div>";
 			?>
 			<div style="text-align: center; color: black"> <b>Welcome, </b>
	 			<h4>
	 				<?php echo $_SESSION['user']; ?>
	 			</h4>
				 </div>
 			<?php
 				echo "<b>";
 				echo "<table class='table table-bordered'>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> First Name: </b>";
	 					echo "</td>";

	 					echo "<td>";
	 						echo $row['First'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Last Name: </b>";
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['Last'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> User Name: </b>";
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['Username'];
	 					echo "</td>";
	 				echo "</tr>";

                     echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Email: </b>";	
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['Email'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Password: </b>";
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['Password'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Confirm Password: </b>";	
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['Confirm'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Phone No: </b>";	
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['Contact'];
	 					echo "</td>";
	 				echo "</tr>";
					 
					 
	 				
				 
 			?>
 		</div>
 	</div>
 </body>
 </html>