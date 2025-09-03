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
echo("&nbsp;<DIV>Bejelentkezve: <br>".$_SESSION["user"]["email"]."</DIV>&nbsp;");
echo("<form action='index.php?logout=1' method='post'>
    <input type='submit' class='form_field' value='Kilépés'>
    </form>");
}
?>