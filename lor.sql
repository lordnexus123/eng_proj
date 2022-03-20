-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Mar 2022, 13:45
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lor`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz`
--

CREATE TABLE `lekarz` (
  `id_lekarz` int(6) NOT NULL,
  `login` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `haslo` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz_dane`
--

CREATE TABLE `lekarz_dane` (
  `id_lekarz` int(6) NOT NULL,
  `nr_pwz` int(12) NOT NULL,
  `imie` varchar(13) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(32) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz_gp`
--

CREATE TABLE `lekarz_gp` (
  `id_lekarz` int(6) NOT NULL,
  `id_placowka` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz_kompetencje`
--

CREATE TABLE `lekarz_kompetencje` (
  `id_lekarz` int(6) NOT NULL,
  `id_specjalizacja` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz_opis`
--

CREATE TABLE `lekarz_opis` (
  `id_lekarz` int(6) NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miesiac`
--

CREATE TABLE `miesiac` (
  `id_miesiac` int(2) NOT NULL,
  `nazwa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjent`
--

CREATE TABLE `pacjent` (
  `id_pacjent` int(6) NOT NULL,
  `login` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `haslo` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjent_dane`
--

CREATE TABLE `pacjent_dane` (
  `id_pacjent` int(6) NOT NULL,
  `imię` varchar(13) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(32) COLLATE utf8mb4_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8mb4_polish_ci NOT NULL,
  `miasto` int(5) NOT NULL,
  `ulica` varchar(32) COLLATE utf8mb4_polish_ci NOT NULL,
  `nr_domu` varchar(4) COLLATE utf8mb4_polish_ci NOT NULL,
  `nr_mieszkania` int(4) DEFAULT NULL,
  `nr_tel` int(9) NOT NULL,
  `dzien_ur` int(2) NOT NULL,
  `id_miesiac` int(2) NOT NULL,
  `rok_ur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `placowka`
--

CREATE TABLE `placowka` (
  `id_placowka` int(6) NOT NULL,
  `login` int(20) NOT NULL,
  `haslo` int(20) NOT NULL,
  `email` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `placowka_dane`
--

CREATE TABLE `placowka_dane` (
  `id_placowka` int(6) NOT NULL,
  `nazwa` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8mb4_polish_ci NOT NULL,
  `miasto` int(5) NOT NULL,
  `ulica` varchar(32) COLLATE utf8mb4_polish_ci NOT NULL,
  `nr_domu` varchar(4) COLLATE utf8mb4_polish_ci NOT NULL,
  `nr_mieszkania` int(4) DEFAULT NULL,
  `nr_tel` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `placowka_opis`
--

CREATE TABLE `placowka_opis` (
  `id_placowka` int(6) NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specjalizacja`
--

CREATE TABLE `specjalizacja` (
  `id_specjalizacja` int(3) NOT NULL,
  `nazwa` varchar(32) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `terminarz`
--

CREATE TABLE `terminarz` (
  `id_termin` int(6) NOT NULL,
  `id_placowka` int(6) NOT NULL,
  `id_lekarz` int(6) NOT NULL,
  `data` date NOT NULL,
  `godzina` varchar(5) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_pacjent` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wizyta_dane`
--

CREATE TABLE `wizyta_dane` (
  `id_wizyta` int(6) NOT NULL,
  `id_pacjent` int(6) NOT NULL,
  `id_termin` int(6) NOT NULL,
  `link_tele` text COLLATE utf8mb4_polish_ci NOT NULL,
  `realizacja` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lekarz`
--
ALTER TABLE `lekarz`
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `haslo` (`haslo`),
  ADD KEY `id_lekarz` (`id_lekarz`);

--
-- Indeksy dla tabeli `lekarz_dane`
--
ALTER TABLE `lekarz_dane`
  ADD UNIQUE KEY `nr_pwz` (`nr_pwz`),
  ADD KEY `id_lekarz` (`id_lekarz`);

--
-- Indeksy dla tabeli `lekarz_gp`
--
ALTER TABLE `lekarz_gp`
  ADD KEY `id_lekarz` (`id_lekarz`),
  ADD KEY `id_placowka` (`id_placowka`);

--
-- Indeksy dla tabeli `lekarz_kompetencje`
--
ALTER TABLE `lekarz_kompetencje`
  ADD UNIQUE KEY `id_lekarz` (`id_lekarz`),
  ADD UNIQUE KEY `id_specjalizacja` (`id_specjalizacja`);

--
-- Indeksy dla tabeli `lekarz_opis`
--
ALTER TABLE `lekarz_opis`
  ADD UNIQUE KEY `id_lekarz` (`id_lekarz`);

--
-- Indeksy dla tabeli `miesiac`
--
ALTER TABLE `miesiac`
  ADD UNIQUE KEY `id_miesiac` (`id_miesiac`);

--
-- Indeksy dla tabeli `pacjent`
--
ALTER TABLE `pacjent`
  ADD UNIQUE KEY `id_pacjent` (`id_pacjent`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `haslo` (`haslo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `pacjent_dane`
--
ALTER TABLE `pacjent_dane`
  ADD PRIMARY KEY (`id_pacjent`),
  ADD KEY `id_miesiac` (`id_miesiac`);

--
-- Indeksy dla tabeli `placowka`
--
ALTER TABLE `placowka`
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `haslo` (`haslo`),
  ADD KEY `id_placowka` (`id_placowka`);

--
-- Indeksy dla tabeli `placowka_dane`
--
ALTER TABLE `placowka_dane`
  ADD PRIMARY KEY (`id_placowka`);

--
-- Indeksy dla tabeli `placowka_opis`
--
ALTER TABLE `placowka_opis`
  ADD KEY `id_placowka` (`id_placowka`);

--
-- Indeksy dla tabeli `specjalizacja`
--
ALTER TABLE `specjalizacja`
  ADD UNIQUE KEY `id_specjalizacja` (`id_specjalizacja`);

--
-- Indeksy dla tabeli `terminarz`
--
ALTER TABLE `terminarz`
  ADD PRIMARY KEY (`id_termin`),
  ADD UNIQUE KEY `id_pacjent` (`id_pacjent`),
  ADD KEY `id_placowka` (`id_placowka`),
  ADD KEY `id_lekarz` (`id_lekarz`);

--
-- Indeksy dla tabeli `wizyta_dane`
--
ALTER TABLE `wizyta_dane`
  ADD PRIMARY KEY (`id_wizyta`),
  ADD KEY `id_pacjent` (`id_pacjent`),
  ADD KEY `id_termin` (`id_termin`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `lekarz_dane`
--
ALTER TABLE `lekarz_dane`
  ADD CONSTRAINT `lekarz_dane_ibfk_1` FOREIGN KEY (`id_lekarz`) REFERENCES `lekarz` (`id_lekarz`);

--
-- Ograniczenia dla tabeli `lekarz_opis`
--
ALTER TABLE `lekarz_opis`
  ADD CONSTRAINT `lekarz_opis_ibfk_1` FOREIGN KEY (`id_lekarz`) REFERENCES `lekarz_dane` (`id_lekarz`);

--
-- Ograniczenia dla tabeli `pacjent_dane`
--
ALTER TABLE `pacjent_dane`
  ADD CONSTRAINT `pacjent_dane_ibfk_1` FOREIGN KEY (`id_miesiac`) REFERENCES `miesiac` (`id_miesiac`);

--
-- Ograniczenia dla tabeli `placowka_opis`
--
ALTER TABLE `placowka_opis`
  ADD CONSTRAINT `placowka_opis_ibfk_1` FOREIGN KEY (`id_placowka`) REFERENCES `placowka_dane` (`id_placowka`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
