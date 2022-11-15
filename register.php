<?php

include 'config.php';

if(isset($_POST['submit'])){

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $pass = md5($_POST['pass']);
   $pass = filter_var($pass, FILTER_SANITIZE_STRING);
   $cpass = md5($_POST['cpass']);
   $cpass = filter_var($cpass, FILTER_SANITIZE_STRING);
    $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);
    $address = $_POST['address'];
   $address = filter_var($address, FILTER_SANITIZE_STRING);
    $city = $_POST['city'];
   $city = filter_var($city, FILTER_SANITIZE_STRING);
    $pin = $_POST['pin'];
   $pin = filter_var($pin, FILTER_SANITIZE_STRING);


   $select = $conn->prepare("SELECT * FROM `users` WHERE email = ?");
   $select->execute([$email]);

   if($select->rowCount() > 0){
      $message[] = 'user email already exist!';
   }else{
      if($pass != $cpass){
         $message[] = 'confirm password not matched!';
      }else{
         $insert = $conn->prepare("INSERT INTO `users`(name, email, password, number, address, city, pin) VALUES(?,?,?,?,?,?,?)");
         $insert->execute([$name, $email, $pass, $number, $address, $city, $pin]);

         if($insert){
               $message[] = 'registered successfully!';
               header('location:login.php');
            }
         }

      }
   }


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/components.css">

</head>
<body>

<?php

if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}

?>
   
<section class="form-container">

   <form action="" enctype="multipart/form-data" method="POST">
      <h3>register now</h3>
      <input type="text" name="name" class="box" placeholder="enter your name" required>
      <input type="email" name="email" class="box" placeholder="enter your email" required>
      <input type="password" name="pass" class="box" placeholder="enter your password" required>
      <input type="password" name="cpass" class="box" placeholder="confirm your password" required>
      <input type="number" name="number" class="box" placeholder="enter your phone number" required>
      <input type="address" name="address" class="box" placeholder="enter your address" required>
      <input type="city" name="city" class="box" placeholder="enter your city" required>
      <input type="pin" name="pin" class="box" placeholder="enter your house pin" required>
      <input type="submit" value="register now" class="btn" name="submit">
      <p>already have an account? <a href="login.php">login now</a></p>
   </form>

</section>


</body>
</html>