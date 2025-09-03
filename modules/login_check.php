<?php
session_start();

include("../connect.php");

$stmt=$connect->prepare("select * from users where email=? and user_pw=?");

$password=md5($_POST["password"]);

$stmt->bind_param("ss", $_POST["email"], $password);

$stmt->execute();

$result=$stmt->get_result();

if(mysqli_num_rows($result)==1)
{
    $line=mysqli_fetch_assoc($result);
    if($line["role_id"]==3 || $line["role_id"]==4)
    {
            $_SESSION["user"]=$line;
            header("Location:../index.php");
    }
    else{
        header("Location:../index.php?action=login.php&login=permission_error");
    }
}
else header("Location:../index.php?action=login.php&login=error");
?>