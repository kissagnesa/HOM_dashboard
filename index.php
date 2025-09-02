<?php
session_start();

if( isset( $_GET["logout"] ) )
{
	unset( $_SESSION["user"] );
}
include("connect.php");
?>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>House of Mysteries adminisztrációs felület</title>
	
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
    <div class="banner">
    <div>
      <?php
			$today=date("Y.m.d");

			$date=getdate();
			
			$days=array("Vasárnap","Hétfő","Kedd","Szerda","Csütörtök","Péntek","Szombat");

			$day_of_week=$date["wday"];

			echo( $today." , ".$days[$day_of_week] );
			?>
    </div>
    <div>
        <a href="index.php">
            <h1>House of Mysteries adminisztrációs felület</h1>
        </a>
    </div>
    <div>
        <?php
        include("modules/login.php");
        include("modules/admin_interface.php");
        ?>
    </div>
    </div>
  </body>
</html>