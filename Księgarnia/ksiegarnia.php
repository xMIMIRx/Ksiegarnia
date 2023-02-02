<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href = "style.css">
    <title>BookShelf.com</title>
</head>
<body>
    <header id = "baner">
        <h1><img src = "zdj/Bookshelf.png" height = "30px">     BookShelf - Świat Książek     <img src = "zdj/Bookshelf.png" height = "30px"></h1>
        <nav id = "menu">
            <table>
                <tr>
                    <td><a href = "#autorzy">Autorzy</td>
                    <td><a href = "#ksiazki">Książki</td>
                    <td><a href = "#zamowienia">Zamówienia</td>
                    <td><a href = "rejestracja.php">Zarejestruj się</td>
                </tr>
            </table>
        </nav>
    </header>



    <section class = "sekcje" id = "autorzy">
        <header>AUTORZY</header>
        <?php autor() ?>
    </section>



    <section class = "sekcje" id = "ksiazki">
        <header>KSIĄŻKI</header>

        <form action = "ksiegarnia.php" method = "POST" id = "wyszukiwanie">
            <label id="wyszukiwanie">Wyszukaj książkę po tytule: </label>
            <input class = "tekst" name = "wyszukiwanie" type = "text" placeholder="Szukaj">
            <input class = "button" id = "wyszukaj" type = "submit" value = "WYSZUKAJ">
        </form>



        <?php
        $db = mysqli_connect("localhost", "root", "", "ksiegarnia");
        if(isset($_POST['wyszukiwanie']))
        {
            $wysz = $_POST['wyszukiwanie'];
            $wysz = preg_replace("#[^0-9a-z]#i","","$wysz");

            $sql_wysz = mysqli_query($db,"SELECT * FROM ksiazki WHERE tytul LIKE '%$wysz%'");
            $licz = mysqli_num_rows($sql_wysz);
            if($licz == 0)
            {
                echo "<p id = 'alert'>Nie znaleziono takiej książki</p>";
            }
            else
            {
                while($tab = mysqli_fetch_array($sql_wysz))
                {
                    echo "<table>";
                    echo "<tr>";
                    echo "<td><img src = 'ksiazka/".$tab["zdjecie"].".jpg'></td>";
                    echo "<td>";
                    echo "<p id = 'tytul'>".$tab["tytul"]."</p>";
                    echo "<p id = 'cena'>Koszt: ".$tab["cena"]." zł </p>";
                    echo "<p id = 'ilosc_sztuk'>Ilość sztuk: ".$tab["ilosc_sztuk"]."</p>";
                    echo "</td>";
                    echo "</tr>";
                    echo "</table><br>";
                }
            }
        }
        ?>
    </section>



    <section class = "sekcje" id = "zamowienia">
        <header>ZAMÓWIENIA</header>
        <form action = "ksiegarnia.php" method = "POST">
            <p>
                <label id="adres_e_mail">ADRES EMAIL:</label>
                <input class = "tekst" type = "text" name="adres_e_mail" placeholder="Email">
            </p>
            <p>
                <label id="haslo">HASŁO:</label>
                <input class = "tekst" type = "password" name="haslo" placeholder="Hasło">
            </p>
            <p>
                <label id="tytul">TYTUŁ:</label>
                <input class = "tekst" type = "text" name="tytul" placeholder="Tytuł">
            </p>

            <input class="button" type="reset" value="WYCZYŚĆ" onclick = "show()">
            <input class="button" type="submit" value="ZAMÓW" onclick = "show()">
        </form>
        <div id = 'info'>
            <?php
            $db = mysqli_connect("localhost", "root", "", "ksiegarnia");
            if(!empty($_POST["adres_e_mail"]) && !empty($_POST["haslo"]) && !empty($_POST["tytul"])){
                $adres_e_mail = $_POST["adres_e_mail"];
                $haslo = $_POST["haslo"];
                $tytul = $_POST["tytul"];

                $klient = "SELECT * FROM klient WHERE adres_e_mail = '$adres_e_mail' AND haslo = '$haslo'";
                $ksiazki = "SELECT * FROM ksiazki WHERE tytul = '$tytul'";

                if($rezultat1 = @$db -> query($klient))
                {
                    $ile_uzyt = $rezultat1 -> num_rows;
                    if($ile_uzyt > 0)
                    {
                        if($rezultat2 = @$db -> query($ksiazki))
                        {
                            $ile_ksiaz = $rezultat2 -> num_rows;
                            if($ile_ksiaz > 0)
                            {
                                $cena = "SELECT cena FROM ksiazki WHERE tytul = '$tytul'";

                                $usun_ksiazke = mysqli_query($db, "UPDATE ksiazki SET ilosc_sztuk = ilosc_sztuk-1 WHERE tytul = '$tytul';");
                                $title_mail = "BookShelf - Świat Książek";
                                $wiadomosc = '
                                <div style = "background-color: rgb(48, 48, 48);;">
                                <h1>'.$tytul.'</h1>
                                <p>Książka zostałą prawidłowo zamówiona</p>
                                <p>Cena: '.$cena.'</p>
                                </div>
                                ';
                                
                                $headers = "From: Your name <paterekpiotr123@gmail.com>\r\n";
                                $headers .= "Reply-To: paterekpiotr123@gmail.com\r\n";
                                $headers .= "Content-type: text/html\r\n";
                
                                echo "<p style = 'color: green;' id = 'alert'>POMYŚLNIE ZAMÓWIONO KSIĄŻKĘ</p>";

                                $email = mail($adres_e_mail, $title_mail, $wiadomosc, $headers);
                            }
                            else
                            {
                                echo "<p id = 'alert'>NIE MA TEKIEJ KSIĄŻKI</p>";
                            }
                        }
                        else
                        {
                            echo "<p id = 'alert'>BŁĄD W REZULTACIE 2</p>";
                        }
                    }
                    else
                    {
                        echo "<p id = 'alert'>NIE MA TAKIEGO UŻYTKOWNIKA</p>";
                    }
                }
                else
                {
                    echo "<p id = 'alert'>BŁĄD W REZULTACIE 1</p>";
                }
            }
            else
            {
                echo "<p id = 'alert'>WYPEŁNIJ WSZYSTKIE WARTOŚCI</p>";
            }
            mysqli_close($db);
            ?>
        </div>
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



<?php   
function autor(){
    $db = mysqli_connect("localhost", "root", "", "ksiegarnia"); 
    $q1 = mysqli_query($db, "SELECT imie, nazwisko, opis, zdjecie FROM autor");

    while($tab = mysqli_fetch_array($q1))
    {
        echo "<table>";
        echo "<tr>";
        echo "<td id = 'obrot'><img src = 'autor/".$tab["zdjecie"].".jpg'></td>";
        echo "<td>";
        echo "<p id = 'imie'>".$tab["imie"]." ".$tab["nazwisko"]."</p>";
        echo "<p id = 'opis'>".$tab["opis"]."</p>";
        echo "</td>";
        echo "</tr>";
        echo "</table><br><br>";
    }
    mysqli_close($db);
}



function wyszukiwanie(){
    $db = mysqli_connect("localhost", "root", "", "ksiegarnia");
    if(!empty($_POST["wyszukiwanie"])){
        $wysz = $_POST["wyszukiwanie"];
    
        
    }
    mysqli_close($db);
}





?>