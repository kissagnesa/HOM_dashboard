<div>
    <?php
    if(isset($_GET["login"]))
    {
        echo("<div>Sikertelen belépés!</div>");
    }
    ?>
    <form action="modules/login_check.php" method="post">
        <input type="email" class="form_field" placeholder="Email..." name="email">
        <input type="password" class="form_field" placeholder="Jelszó..." name="password">
        <input type="submit" class="form_field" value="Belépés">
    </form>
</div>