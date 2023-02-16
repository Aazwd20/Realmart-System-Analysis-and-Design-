<?php
session_start();
include("livechat_con.php");

$FromUser = $_POST["FromUser"];
$ToUser = $_POST["ToUser"];
$message = $_POST["message"];

$output="";

$sql = "INSERT INTO `messages` (`id`, `FromUser`,`ToUser`,`Message`) VALUES ('', '$FromUser','$ToUser','$message')";
// $sql2 = "INSERT INTO `messages` (`id`, `FromUser`, `ToUser`, `Message`) VALUES ('1', '1', '1', 'fasdfdsa'); "


// if($sqlr){
//     $output.="";

// }else{
//     $output.="Error. Please try again";
// }
// echo $output;


if($db -> query($sql)){
    $output.="";

}else{
    $output.="Error. Please try again.";
}
echo $output;

?>