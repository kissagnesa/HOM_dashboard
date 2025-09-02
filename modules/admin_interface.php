<?php
if(!isset($_SESSION["user"]))
{
?>
<a href="index.php?action=login.php"></a>
<?php
}
else{
?>
<i></i>
<?php
echo("&nbsp;<DIV>".$_SESSION["user"]["email"]."</DIV>&nbsp;");
echo("<a class='usergomb' href='index.php?logout=1'>Kilépés</a>");
}
?>