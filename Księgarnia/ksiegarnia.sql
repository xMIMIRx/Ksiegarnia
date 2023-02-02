-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Mar 2022, 20:06
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ksiegarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `narodowosc` varchar(30) NOT NULL,
  `opis` text NOT NULL,
  `zdjecie` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autora`, `imie`, `nazwisko`, `narodowosc`, `opis`, `zdjecie`) VALUES
(1, 'Adam', 'Mickiewicz', 'Polska', 'Adam Bernard Mickiewicz (ur. 24 grudnia 1798 w Zaosiu lub Nowogródku, zm. 26 listopada 1855 w Stambule) – polski poeta, działacz polityczny, publicysta, tłumacz, filozof, działacz religijny, mistyk, organizator i dowódca wojskowy, nauczyciel akademicki. Obok Juliusza Słowackiego i Zygmunta Krasińskiego uważany za największego poetę polskiego romantyzmu (zaliczany do grona tzw. Trzech Wieszczów) oraz literatury polskiej, a nawet za jednego z największych na skalę europejską. Określany też przez innych, jako poeta przeobrażeń oraz bard słowiański.', 'adam_mickiewicz'),
(2, 'Joanne', 'Rowling', 'Wielka Brytania', 'J.K. Rowling, właśc. Joanne Murray (ur. 31 lipca 1965 w Chipping Sodbury) – brytyjska pisarka, scenarzystka, producentka filmowa i telewizyjna, filantropka, a wcześniej nauczycielka języka angielskiego. Sławę przyniosła jej seria powieści fantasy Harry Potter, której sprzedaż przekroczyła już 500 mln egzemplarzy. Przed publikacją Harry’ego Pottera i Kamienia Filozoficznego, pod wpływem sugestii wydawcy, Bloomsbury, Rowling zdecydowała się podpisać książkę inicjałami, dodając drugie imię. Wybrała imię swojej babki – Kathleen, którego formalnie pisarka nigdy nie nosiła. W ten sposób powstał pseudonim „J.K. Rowling”.', 'joanne_rowling'),
(3, 'Andrzej', 'Sapkowski', 'Polska', 'Andrzej Sapkowski (ur. 21 czerwca 1948 w Łodzi) – polski pisarz fantasy, z wykształcenia ekonomista. Twórca postaci wiedźmina. Jest najczęściej po Lemie tłumaczonym polskim autorem fantastyki. W 2012 roku minister kultury i dziedzictwa narodowego Bogdan Zdrojewski odznaczył go srebrnym medalem Gloria Artis. Na podstawie jego literatury powstały: film pełnometrażowy i serial telewizyjny Wiedźmin, gra fabularna Wiedźmin: Gra Wyobraźni oraz gra karciana. W oparciu o cykl wiedźmiński powstała seria komputerowych gier RPG, wydana przez warszawskie studio CD Projekt RED, w skład której wchodzą: Wiedźmin, Wiedźmin 2: Zabójcy królów oraz Wiedźmin 3: Dziki Gon. W maju 2017 r. serwis Netflix zapowiedział nakręcenie serialu opartego na prozie Sapkowskiego.', 'andrzej_sapkowski'),
(4, 'Stephen', 'King', 'Stany Zjednoczone', 'Stephen Edwin King (ur. 21 września 1947 w Portland) – amerykański pisarz specjalizujący się w literaturze grozy. W przeszłości wydawał książki pod pseudonimem Richard Bachman, raz jako John Swithen. Jego książki rozeszły się w nakładzie przekraczającym 350 milionów egzemplarzy, co czyni go jednym z najbardziej poczytnych pisarzy na świecie. Jest autorem horrorów, które przeszły do klasyki gatunku, jak np. Lśnienie, Smętarz dla zwierzaków (w innym wydaniu jako Cmętarz zwieżąt), Miasteczko Salem, Podpalaczka. Nie ogranicza się jednak do jednego gatunku, czego przykładem są: Cztery pory roku, Zielona mila, Oczy smoka, Bastion oraz 8-tomowy cykl powieści fantastycznych Mroczna Wieża. Jest wielokrotnym zdobywcą Nagród Brama Stokera i British Fantasy Award.', 'stephen_king'),
(5, 'John', 'Tolkien', 'RPA', 'John Ronald Reuel Tolkien, CBE (ur. 3 stycznia 1892 w Bloemfontein w Oranii, zm. 2 września 1973 w Bournemouth) – brytyjski pisarz oraz profesor filologii klasycznej i literatury staroangielskiej na University of Oxford. Jako autor powieści Władca Pierścieni, której akcja rozgrywa się w mitycznym świecie Śródziemia, spopularyzował literaturę fantasy. Jest autorem wielu dzieł rozgrywających się w Śródziemiu: powieści Hobbit, czyli tam i z powrotem, Władca Pierścieni, Silmarillion oraz kilku krótkich form, opowiadań niezwiązanych lub luźno związanych z wielką mitologią, tzw. Legendarium Śródziemia.', 'john_tolkien'),
(6, 'George', 'Martin', 'Stany Zjednoczone', 'George R.R. Martin, właśc. George Raymond Richard Martin (ur. 20 września 1948 w Bayonne w stanie New Jersey) – amerykański pisarz, twórca science fiction, fantasy i horrorów, zarówno opowiadań, jak i powieści, wielokrotny zdobywca nagród Nebula i Hugo oraz wielu innych: World Fantasy, Bram Stoker Award, czy Locus Award. Początkowo publikował pod nazwiskiem pozbawionym dwóch „R”, które dołączył, gdy zaczęto go mylić z producentem płyt The Beatles. Jego utwory przetłumaczono na dziesiątki języków, w tym polski. Jest autorem cyklu fantasy Pieśń lodu i ognia, na którym oparto między innymi serial Gra o tron wyprodukowany przez HBO (2011-2019), grę fabularną A Game of Thrones, komiks oraz szereg gier komputerowych. Na podstawie jego innych prac nakręcono kilka filmów i odcinków serii telewizyjnych. George R.R. Martin współpracował także przy tworzeniu różnych projektów telewizyjnych.', 'george_martin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(40) NOT NULL,
  `nazwisko` varchar(60) NOT NULL,
  `miejscowosc` varchar(50) NOT NULL DEFAULT 'Tarnobrzeg',
  `adres_e_mail` varchar(70) NOT NULL,
  `haslo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klienta`, `imie`, `nazwisko`, `miejscowosc`, `adres_e_mail`, `haslo`) VALUES
(1, 'Piotr', 'Paterek', 'Tarnobrzeg', 'paterekpiotr@wp.pl', 'piotr'),
(2, 'Adrian', 'Wiśniewski', 'Ustka', 'adek@wp.pl', 'adek'),
(3, 'Ewelina', 'Nowak', 'Tarnobrzeg', 'nowak@wp.pl', 'nowak'),
(4, 'Anna', 'Kowalska', 'Tarnobrzeg', 'ania@gmail.com', 'ania'),
(5, 'Ewelina', 'Wiśniewski', 'Warszawa', 'wawel@onet.pl', 'wawelek'),
(8, 'Juliusz', 'Słowacki', 'Jakas', 'juliusz@gmail.com', 'jd'),
(11, 'Pior', 'dasd', 'das', 'dsa', 'sadasd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` varchar(100) NOT NULL,
  `cena` decimal(4,2) NOT NULL,
  `ilosc_sztuk` int(11) NOT NULL,
  `zdjecie` varchar(200) NOT NULL,
  `id_autora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `cena`, `ilosc_sztuk`, `zdjecie`, `id_autora`) VALUES
(1, 'Pan Tadeusz', '29.99', -1, 'pan_tadeusz', 1),
(2, 'Konrad Wallenrod', '29.99', 5, 'konrad_wallenrod', 1),
(3, 'Ballady i romanse', '24.99', 5, 'ballady_i_romanse', 1),
(4, 'Dziady część III', '14.99', 5, 'dziady_cz_3', 1),
(5, 'Sonety Krymskie', '24.99', 5, 'sonety_krymskie', 1),
(6, 'Reduta Ordona', '19.99', 5, 'reduta_ordona', 1),
(7, 'Harry Potter i Kamień Filozoficzny', '34.99', 15, 'hp_kamien_filozoficzny', 2),
(8, 'Harry Potter i Komnata Tajemnic', '34.99', 17, 'hp_komnata_tajemnic', 2),
(9, 'Harry Potter i Więzień Azkabanu', '34.99', 14, 'hp_wiezien_azkabanu', 2),
(10, 'Harry Potter i Czara Ognia', '34.99', 23, 'hp_czara_ognia', 2),
(11, 'Harry Potter i Zakon Feniksa', '34.99', 27, 'hp_zakon_feniksa', 2),
(12, 'Harry Potter i Książę Półkrwi', '34.99', 11, 'hp_ksiaze_polkrwi', 2),
(13, 'Harry Potter i Insygnia Śmierci', '34.99', 18, 'hp_insygnia_smierci', 2),
(14, 'Wiedźmin - Ostatnie życzenie', '44.99', 5, 'w_ostatnie_zyczenie', 3),
(15, 'Wiedźmin - Miecz przeznaczenia', '44.99', 5, 'w_miecz_przeznaczenia', 3),
(16, 'Wiedźmin - Krew elfów', '44.99', 5, 'w_krew_elfow', 3),
(17, 'Wiedźmin - Czas pogardy', '44.99', 5, 'w_czas_pogardy', 3),
(18, 'Wiedźmin - Chrzest ognia', '44.99', 5, 'w_chrzest_ognia', 3),
(19, 'Wiedźmin - Wieża jaskółki', '44.99', 5, 'w_wieza_jaskolki', 3),
(20, 'Wiedźmin - Pani Jeziora', '44.99', 5, 'w_pani_jeziora', 3),
(21, 'Wiedźmin - Sezon burz', '44.99', 5, 'w_sezon_burz', 3),
(22, 'Wiedźmin - Szpony i kły', '44.99', 5, 'w_szpony_i_kly', 3),
(23, 'To', '24.99', 5, 'to', 4),
(24, 'Zielona mila', '24.99', 5, 'zielona_mila', 4),
(26, 'Doktor Sen', '29.99', 5, 'doktor_sen', 4),
(27, 'Mroczna Wieża', '39.99', 5, 'mroczna_wieza', 4),
(28, 'Lśnienie', '34.99', 5, 'lsnienie', 4),
(29, 'Carrie', '24.99', 5, 'carrie', 4),
(30, 'Władca Pierścieni - Bractwo Pierścienia', '44.99', 5, 'wp_bractwo_pierscienia', 5),
(31, 'Władca Pierścieni - Dwie Wieże', '44.99', 5, 'wp_dwie_wieze', 5),
(32, 'Władca Pierścieni - Powrót Króla', '44.99', 5, 'wp_powrot_krola', 5),
(33, 'Hobbit, czyli tam i z powrotem', '29.99', 5, 'hobbit', 5),
(34, 'Gra o Tron', '34.99', 5, 'gra_o_tron', 6),
(35, 'Starcie Królów', '34.99', 5, 'starcie_krolow', 6),
(36, 'Nawałnica Mieczy. Stal i Śnieg', '34.99', 5, 'nawalnica_mieczy', 6),
(37, 'Uczta dla Wron. Sieć Spisków', '34.99', 5, 'uczta_dla_wron', 6),
(38, 'Taniec ze Smokami. Część 1', '34.99', 5, 'taniec_ze_smokami_1', 6),
(39, 'Taniec ze Smokami. Część 2', '34.99', 5, 'taniec_ze_smokami_2', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_klienta` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_klienta`, `id_ksiazki`) VALUES
(1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`),
  ADD UNIQUE KEY `adres_e_mail` (`adres_e_mail`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `id_autora` (`id_autora`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_ksiazki` (`id_ksiazki`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`id_autora`) REFERENCES `autor` (`id_autora`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id_klienta`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id_ksiazki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
