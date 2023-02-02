<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href = "style.css">
    <link rel = "stylesheet" href = "style_rejestracja.css">
    <title>BookShelf.com</title>
</head>
<body>
    <header id = "baner">
        <h1><img src = "zdj/Bookshelf.png" height = "30px">     BookShelf - Świat Książek     <img src = "zdj/Bookshelf.png" height = "30px"></h1>
        <nav id = "menu">
            <table>
                <tr>
                    <td><a href = "ksiegarnia.php">Powrót</td>
                </tr>
            </table>
        </nav>
    </header>



    <section class = "sekcje" id = "rejestracja">
        <header>ZAREJESTRUJ SIĘ</header>
        <form action = "rejestracja.php" method = "POST">
            <p>
                <label id="imie">IMIE: </label>
                <input class = "tekst" type = "text" name="imie" placeholder="Imie">
            </p>
            <p>
                <label id="nazwisko">NAZWISKO: </label>
                <input class = "tekst" type = "text" name="nazwisko" placeholder="Nazwisko">
            </p>
            <p>
                <label id="miejscowosc">MIEJSCOWOŚĆ: </label>
                <input class = "tekst" type = "text" name="miejscowosc" placeholder="Miejscowość">
            </p>
            <p>
                <label id="adres_e_mail">ADRES EMAIL: </label>
                <input class = "tekst" type = "text" name="adres_e_mail" placeholder="Email">
            </p>
            <p>
                <label id="haslo">HASŁO: </label>
                <input class = "tekst" type = "password" name="haslo" placeholder="Hasło">
            </p>

            <input class="button" type="reset" value="WYCZYŚĆ" onclick = "show()">
            <input class="button" type="submit" value="ZAREJESTRUJ SIĘ" onclick = "show()">
        </form>
    </section>



    <section class = "sekcje" id = "info">
        <?php
        $db = mysqli_connect("localhost", "root", "", "ksiegarnia");
        if(!empty($_POST["imie"]) && !empty($_POST["nazwisko"]) && !empty($_POST["miejscowosc"]) && !empty($_POST["adres_e_mail"]) && !empty($_POST["haslo"])){
            $imie = $_POST["imie"];
            $nazwisko = $_POST["nazwisko"];
            $miejscowosc = $_POST["miejscowosc"];
            $adres_e_mail = $_POST["adres_e_mail"];
            $haslo = $_POST["haslo"];

            $czy = mysqli_query($db, "INSERT INTO klient(imie, nazwisko, miejscowosc, adres_e_mail, haslo) VALUES('$imie', '$nazwisko', '$miejscowosc', '$adres_e_mail', '$haslo')");
            if($czy)
            {
                echo "<p style = 'color: green; font-size: 24px; text-align: center;'>UDAŁO SIĘ ZAREJESTROWAĆ</p>";
            }
            else
            {
                echo "<p style = 'color: red; font-size: 24px; text-align: center;'>NIE UDAŁO SIĘ ZAREJESTROWAĆ</p>";
            }
        }
        else
        {
            echo "<p style = 'color: red; font-size: 24px; text-align: center;'>NIE UDAŁO SIĘ ZAREJESTROWAĆ</p>";
        }
        mysqli_close($db);
        ?>
    </section>



    <footer id = "stopka">
        <p>Autor: Piotr Paterek III BTP</p>
    </footer>
</body>
</html>



<script>
    function show() {
        document.getElementById("info").style.visibility = "visible";
    }
</script>