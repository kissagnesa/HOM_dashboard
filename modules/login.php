<div>
    <?php
    if(isset($_GET["login"]))
    {
        echo("<div>Sikertelen belépés!</div>");
    }
    ?>
    <form action="modules/login_check.php">
        <input type="email" class="form_field" placeholder="Email..." name="loginemail">
        <input type="password" class="form_field" placeholder="Jelszó..." name="loginpw">
        <input type="submit" class="form_field" value="Belépés">
    </form>
</div>