<?php
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db = "donate_db";
    $conn = mysqli_connect($host, $user, $pass, $db) or die('Error Connecting');
    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="sfdlogin-signup.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<style>
input:focus {
  background-color: #f2f2f2;
}
</style>

</head>

<body>

<?php

    if(isset($_POST['submitsignup']))
    {
        $sfdName=$_POST['sfdName'];
        $Contact=$_POST['Contact'];
        $Email=$_POST['Email'];
        $Location=$_POST['Location'];
        $Password=$_POST['Password'];
        $ConfirmPassword=$_POST['ConfirmPassword'];
        $query2="INSERT INTO sfdsignin(sfdName,Contact,Email,Location,Password,ConfirmPassword) VALUES('$sfdName','$Contact','$Email','$Location','$Password','$ConfirmPassword');";
        $res2=mysqli_query($conn,$query2);
        
      
    } 



if(count($_POST)>0) {
	$result = mysqli_query($conn,"SELECT * FROM sfdsignin WHERE Password = '". $_POST["Password1"]."'and sfdName= '". $_POST["sfdName1"]."'");
	$count  = mysqli_num_rows($result);
	if($count==0) {
		echo "<script>alert('Invalid RollNo or Password!!');</script>";
		
		echo "<script>window.location.href='./sfdlogin-signup.php';</script>";
		exit();
		//$message = "Invalid Username or Password!";
	} else
		echo "<script>alert('You are successfully authenticated!');</script>";
		echo "<script>window.location.href='./sfdlogin-signup.php';</script>";
									
}


    ?>


    <div class="container">
        <div class="login" data-aos="zoom-in-up" data-aos-duration="1000"
        data-aos-easing="ease-in-out">
            <h1>Login</h1>
            <form  id="login" class="login-data" method="post" action="sfdlogin-signup.php">
                <label for="text" >Name</label>
                <input type="text" id="sfd-name" placeholder="Name" name="sfdName1"
                required minlength="2" maxlength="100" />
                
                <label for="text" >What You Need ?</label>
                <input type="text" id="sfd-name" placeholder="what you what to receive" name="ReceiveGoods"
                required minlength="2" maxlength="100" />
              
                <label for="text" >Password</label>
                <input type="password" id="sfd-password" placeholder="Create Password (Min. 8 Characters)" name="Password1"
                required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" title="please include 1 uppercase Character,1 lowercase Character and 1 number. "
          />
                <button type="submit" name="submitid">Login</button>
            
            </form>
        </div>
        
      <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
    <script src="sfdlogin-signupScript.js"></script>
</body>
</html>