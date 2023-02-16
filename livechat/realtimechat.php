<?php
include("livechat_con.php");

$FromUser = $_POST["FromUser"];
$ToUser = $_POST["ToUser"];
$output="";

$chats= mysqli_query($db,"SELECT * FROM messages WHERE (FromUser = '".$FromUser."' AND ToUser = '".$ToUser."') OR (FromUser = '".$ToUser."' AND ToUser = '".$FromUser."')")
                        or die("Failed to query database".mysql_error());
                        while ($chat = mysqli_fetch_assoc($chats)){
                            if($chat["FromUser"] == $FromUser){
                                $output.="<div style= 'text-align:right;'>
                            <p style='background-color:lightblue; word-wrap:break-word;display:inline-block;padding:5px; border-radius:10px;max width:70%;'>".$chat["Message"]."</p>
                            </div>";
                            }
                            else{
                                $output.= "<div style= 'text-align:left;'>
                            <p style='background-color:yellow; word-wrap:break-word;display:inline-block;padding:5px; border-radius:10px;max-width:70%;'>".$chat["Message"]."</p>
                            </div>";
                            }
                        }
                        echo $output;


?>