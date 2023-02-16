<?php
$servername = "localhost"; //server
$username = "root"; //username
$password = ""; //password
$dbname = "realmart";  //database

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname); // connecting
// Check connection
if (!$db) {       //checking connection to DB
    die("Connection failed: " . mysqli_connect_error());
}
session_start();

if(empty($_SESSION["user_id"]))
{
	header('../location:login.php');
}
else{
  $id = $_SESSION["user_id"];



echo "$id";

    // $SQL="insert into order_history(id,user_id,product_id,quantity) values('".$_SESSION["id"]."','".$item["user_id"]."','".$item["product_id"]."','".$item["price"]."')";

    //   mysqli_query($db,$SQL);


    //                               unset($_SESSION["cart"]);
    //                               unset($item["id"]);
    //                               unset($item["user_id"]);
    //                               unset($item["product_id"]);
    //                               unset($item["quantity"]);
    //   $success = "Thankyou! Your Order Placed successfully!";

    //                               function_alert();

    // $sql = "DELETE FROM `cart` WHERE user_id = $id";
    $sql = "DELETE FROM `cart` WHERE `cart`.`user_id` = 13 ";
    

                      }


?>

<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
    </style>
    <body>
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">✓</i>
      </div>
        <h1>Success</h1> 
        <p>Payment Succesful<br/></p>
        <a href="../index.php">
                <button class = "button_to_home">OK</button>
        </a>

      </div>
    </body>
</html>