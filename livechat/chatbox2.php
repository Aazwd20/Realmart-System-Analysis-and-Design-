<?php
$_SESSION["userId"]="1";
include("livechat_con.php");
include("link.php");
$users = mysqli_query($db,"SELECT * FROM users WHERE id = '".$_SESSION["userId"]."' ")
    or die("Failed to query database".mysql_error());
    // echo $_SESSION["userId"];
    $user = mysqli_fetch_assoc($users);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Live chat</title>
</head>
<body>
    <div class="container-fluid" style="padding-top: -41px;">
        <div class="row">
            <div class="col-md-4" style="padding-left: 19%;
  padding-top: 4%;
  padding-right: none; padding-right: 0px;">
            <div class="container" style="padding-bottom: 349px;
    padding-top: 0%;
    background-color: steelblue; border-block: 2px solid steelblue;">
                <p>
                    <?php echo $user["firstname"]; ?>
                </p>
                <input type="text" id= "FromUser" value = <?php echo $user["id"]; ?> hidden />
                <p>Send message to:</p>
                <ul>
                <?php
                    $msgs = mysqli_query($db,"SELECT * FROM users ")
                    or die("Failed to query database".mysql_error());
                    while($msg = mysqli_fetch_assoc($msgs)){
                        echo '<li><a href="?ToUser='.$msg["id"].'">'.$msg["firstname"].'</a></li>';
                    }
                
                ?>
                </ul>
                <a href="index.php">back</a>
                </div>

            </div>
            <div class="col-md-4" style="padding-left: 0%;
  min-width: 50%; padding-top: 1%;">
            <div class="modal-dialog">
        <div class="modal-content" style="max-height: 573px;">
            <div class="modal-header" style="background-color: steelblue; max-height: 67px;">
                <h4><?php
                if (isset($_GET["ToUser"])){

                    $userName = mysqli_query($db,"SELECT * FROM users WHERE id = '".$_GET["ToUser"]."' ")
                    or die("Failed to query database".mysql_error());
                    $uname= mysqli_fetch_assoc($userName);
                        echo '<input type="text" value='.$_GET["ToUser"].' id="ToUser" hidden/>';
                        echo $uname["firstname"];
                    }
                    else{
                        $userName = mysqli_query($db,"SELECT * FROM users ")
                        or die("Failed to query database".mysql_error());
                        $uname= mysqli_fetch_assoc($userName);
                        $_SESSION["ToUser"] = $uname["id"];
                        echo '<input type="text" value='.$_SESSION["ToUser"].' id="ToUser" hidden/>';
                        echo $uname["firstname"];


                    }
                ?></h4>

            </div>
            <div class="modal-body"id="msgBody" style="height:400px;overflow-y: scroll; overflow-x: hidden; max-height: 403px;">
               

            <?php
                if(isset($_GET["ToUser"])){
                        $chats = mysqli_query($db,"SELECT * FROM messages WHERE (FromUser = '".$_SESSION["userId"]."'AND ToUser='".$_GET["ToUser"]."') OR (FromUser = '".$_GET["ToUser"]."'AND ToUser='".$_SESSION["userId"]."')")
                        or die("Failed to query database".mysql_error());
                        // $chat = mysqli_fetch_assoc($chats);
                }

                        else{
                            $chats = mysqli_query($db,"SELECT * FROM messages WHERE (FromUser = '".$_SESSION["userId"]."'AND ToUser='".$_SESSION["ToUser"]."') OR (FromUser = '".$_SESSION["ToUser"]."'AND ToUser='".$_SESSION["userId"]."')")
                        or die("Failed to query database".mysql_error());


                        while ($chat = mysqli_fetch_assoc($chats)){
                            if($chat["FromUser"] == $_SESSION["userId"]){
                            echo "<div style= 'text-align:right;'>
                            <p style='background-color:lightblue; word-wrap:break-word;display:inline-block;padding:5px; border-radius:10px;max width:70%;'>".$chat["Message"]."</p>
                            </div>";
                            }
                            else{
                                echo "<div style= 'text-align:left;'>
                            <p style='background-color:yellow; word-wrap:break-word;display:inline-block;padding:5px; border-radius:10px;max-width:70%;'>".$chat["Message"]."</p>
                            </div>";

                            }

                        }
                    }
            ?>
            </div>
            <div class="modal-footer" style="background-color: steelblue; max-height: 107px;">
                <textarea id="message" class="form-control" style="height:70px;"></textarea>
                <button id="send" class = "btn btn-primary" style="height:70%;">send</button>

            </div>

        </div>
    </div>

            </div>
            <div class="col-md-4">

            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $("#send").on("click",function(){
          $.ajax({
            url:"insertMessage.php",
            method:"POST",
            data:{
                FromUser:$("#FromUser").val(),
                ToUser:$("#ToUser").val(),
                message:$("#message").val()
            },
            dataType:"text",
            success:function(data)
            {
                $("#message").val("");
            }
          });  
        });

        setInterval(function(){

            $.ajax({
                url:"realtimechat.php",
                method:"POST",
                data:{
                    FromUser:$("#FromUser").val(),
                    ToUser:$("#ToUser").val()
                },
                dataType:"text",
                success:function(data){
                    $("#msgBody").html(data);
                }
            });
        },700);

    });
</script>
</html>