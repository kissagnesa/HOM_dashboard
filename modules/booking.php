<?php
if (isset($_SESSION["user"])) {

    $result = $connect->query("select * from booking");

?>
    <a href="modules/booking_export.php">
    <button class="userbutton">Exportálás CSV-be</button>
    </a>
<?php
    if ($result && $result->num_rows > 0) {
        echo "<table>";
        echo "<tr>";
        echo "<th>ID</th>";
        echo "<th>Dátum</th>";
        echo "<th>Szoba</th>";
        echo "<th>Csapat</th>";
        echo "<th>Eredmény</th>";
        echo "<th>Elérhető</th>";
        echo "<th>Megjegyzés</th>";
        echo "</tr>";

        while ($line = $result->fetch_assoc()) {
            echo ("<tr>");
            echo ("<td>".$line["booking_id"]."</td>");
            echo ("<td>".$line["booking_date"]."</td>");
            echo ("<td>".$line["room_id"]."</td>");
            echo ("<td>".$line["team_id"]."</td>");
            echo ("<td>".$line["result"]."</td>");
            echo ("<td>".$line["avaible"]. "</td>");
            echo ("<td>".$line["comment"]."</td>");
            echo ("</tr>");
        }

        echo "</table>";
    } else {
        echo "Nincsenek foglalások az adatbázisban.";
    }

}
?>
