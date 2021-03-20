-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 08:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hack`
--
CREATE DATABASE IF NOT EXISTS `hack` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hack`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `ID_postare` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `ID_postare`, `ID_utilizator`, `text`) VALUES
(1, 1, 5, 'Imi place foarte mult aceasta poza, Adriana :) '),
(2, 4, 1, 'Arata foarte bine bradul. Felicitari! '),
(3, 4, 5, 'Ai putea sa imi imbodoposti si bradul meu?');

-- --------------------------------------------------------

--
-- Table structure for table `conversatii`
--

CREATE TABLE `conversatii` (
  `ID` int(11) NOT NULL,
  `ID_expeditor` int(11) NOT NULL,
  `ID_destinatar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `evenimente`
--

CREATE TABLE `evenimente` (
  `ID` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL,
  `data` date NOT NULL,
  `descriere` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ex_hobbies`
--

CREATE TABLE `ex_hobbies` (
  `ID` int(11) NOT NULL,
  `nume` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ex_hobbies`
--

INSERT INTO `ex_hobbies` (`ID`, `nume`) VALUES
(1, 'Hiking'),
(2, 'Backpacking'),
(3, 'Camping'),
(4, 'Hunting'),
(5, 'Fishing'),
(6, 'Archery'),
(7, 'Canoeing'),
(8, 'Kayaking'),
(9, 'Running'),
(10, 'Geocaching'),
(11, 'Growing Vegetables'),
(12, 'Composting'),
(13, 'Metal Detecting'),
(14, 'Bird Watching'),
(15, 'Beekeeping');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `ID` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL,
  `ID_hobbie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`ID`, `ID_utilizator`, `ID_hobbie`) VALUES
(1, 1, 1),
(2, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `intrebari`
--

CREATE TABLE `intrebari` (
  `ID` int(11) NOT NULL,
  `intrebare` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intrebari`
--

INSERT INTO `intrebari` (`ID`, `intrebare`) VALUES
(1, 'Care este animalul tau preferat?'),
(2, 'Care este orasul tau preferat?'),
(3, 'Ce jocuri jucam saptamana asta?\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `ID` int(11) NOT NULL,
  `ID_postare` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mesaje`
--

CREATE TABLE `mesaje` (
  `ID` int(11) NOT NULL,
  `ID_conversatie` int(11) NOT NULL,
  `ID_destinatar` int(11) NOT NULL,
  `ID_expeditor` int(11) NOT NULL,
  `mesaj` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postari`
--

CREATE TABLE `postari` (
  `ID` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL,
  `titlu` varchar(100) NOT NULL,
  `imagine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriere` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postari`
--

INSERT INTO `postari` (`ID`, `ID_utilizator`, `titlu`, `imagine`, `descriere`) VALUES
(1, 1, 'Hicking', 'post1.jpg', 'Transfagarasan'),
(2, 1, 'MyPet', 'post2.jpg', 'This is my dog.'),
(4, 6, 'Bradul meu de scraciun.', 'craciun5.jpg', 'Acesta este bradul meu de anul acesta. Sper ca va place :) .'),
(5, 5, 'Excursie cu prietenii.', 'post1.jpg', 'Impreuna cu cei mai buni prieteni am fost sa realizam aceasta poza. ');

-- --------------------------------------------------------

--
-- Table structure for table `raspunsuri`
--

CREATE TABLE `raspunsuri` (
  `ID` int(11) NOT NULL,
  `ID_intrebare` int(11) NOT NULL,
  `raspuns` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raspunsuri`
--

INSERT INTO `raspunsuri` (`ID`, `ID_intrebare`, `raspuns`) VALUES
(1, 1, 'Pisica'),
(2, 1, 'Cainele'),
(3, 1, 'Papagalul'),
(4, 1, 'Hamsterul'),
(5, 2, 'Bucuresti'),
(6, 2, 'Paris'),
(7, 2, 'Londra'),
(8, 2, 'New York'),
(13, 3, 'AmongUS'),
(14, 3, 'Fifa'),
(15, 3, 'Sah'),
(16, 3, 'Lol');

-- --------------------------------------------------------

--
-- Table structure for table `raspunsuri_date`
--

CREATE TABLE `raspunsuri_date` (
  `ID` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL,
  `ID_raspuns` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raspunsuri_date`
--

INSERT INTO `raspunsuri_date` (`ID`, `ID_utilizator`, `ID_raspuns`) VALUES
(5, 5, 13),
(6, 6, 16),
(7, 5, 6),
(9, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tematici`
--

CREATE TABLE `tematici` (
  `ID` int(11) NOT NULL,
  `Nume` varchar(100) NOT NULL,
  `Descriere` varchar(200) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tematici`
--

INSERT INTO `tematici` (`ID`, `Nume`, `Descriere`, `data`) VALUES
(1, 'Toamna', 'Fiecare membru doritor al companiei noastre poate impartasii un peisaj de toamna care ii starneste admiratie :) ', '2020-10-01'),
(2, 'Ziua nationala a Romaniei', 'Cu ocazia implinirii a 102 ani de la Marea Unire dorim sa realizam cel mai colorat si viu colaj cu poze ale angajatiilor imbracati in articole traditionale. La multi ani Romania! ', '2020-12-01'),
(3, 'Craciun fericit!', 'Sărbătoarea Crăciunului se apropie cu pași repezi, hai sa impartasim bucuria sarbatorii prin intermediul celor mai crastunistice fotografii. Craciun fericit!', '2020-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `tematici_adaugate`
--

CREATE TABLE `tematici_adaugate` (
  `ID_tematica` int(11) NOT NULL,
  `ID_utilizator` int(11) NOT NULL,
  `poza` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tematici_adaugate`
--

INSERT INTO `tematici_adaugate` (`ID_tematica`, `ID_utilizator`, `poza`, `ID`) VALUES
(3, 1, 'craciun1.jpg', 1),
(3, 5, 'craciun2.jpg', 2),
(3, 6, 'craciun3.jpg', 3),
(2, 1, '1decembrie.jpg', 4),
(2, 6, '1decembrie2.jpg', 5),
(1, 5, 'toamna1.jpg', 6),
(1, 6, 'toamna2.jpg', 7),
(3, 1, 'craciun5.jpg', 8),
(3, 1, 'craciun4.jpg', 9),
(3, 1, 'craciun6.jpg', 10),
(3, 1, 'craciun6.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `utilizatori`
--

CREATE TABLE `utilizatori` (
  `ID` int(11) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `parola` varchar(100) NOT NULL,
  `nume` varchar(100) NOT NULL,
  `prenume` varchar(100) NOT NULL,
  `data_nastere` date NOT NULL,
  `echipa` varchar(100) NOT NULL,
  `departament` varchar(100) NOT NULL,
  `companie` varchar(100) NOT NULL,
  `poza` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(100) NOT NULL,
  `link_in` varchar(100) NOT NULL,
  `latitudine` varchar(100) NOT NULL DEFAULT '0',
  `longitudine` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utilizatori`
--

INSERT INTO `utilizatori` (`ID`, `adresa`, `parola`, `nume`, `prenume`, `data_nastere`, `echipa`, `departament`, `companie`, `poza`, `link_fb`, `link_in`, `latitudine`, `longitudine`) VALUES
(1, 'adriana@panda.com', 'c0aa76e0b0e6ec9255df2f7d2c69aca5', 'Boncu', 'Adriana', '1998-11-26', 'systems', 'IT', 'panda', 'poza-adriana.jpg', 'https://www.facebook.com/boncuiuliana/', 'https://www.linkedin.com/in/adriana-boncu-7ab75618a', '45.0625536', '24.3105792'),
(5, 'alexandra@panda.com', 'e10adc3949ba59abbe56e057f20f883e', 'Alexandra', 'Buse', '1999-03-25', 'system', 'IT', 'panda', 'poza-alexandra.jpg', 'https://www.facebook.com/alexandra.buse.9', 'https://www.linkedin.com/in/maria-alexandra-buse/', '0', '0'),
(6, 'ionut@panda.com', 'e10adc3949ba59abbe56e057f20f883e', 'Girla', 'Ionut', '1997-03-15', 'system', 'IT', 'panda', 'poza-ionut.jpg', 'https://www.facebook.com/ionut.girla.97', 'https://www.linkedin.com/in/ionut-alexandru-girla-0a9a63162/', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `commnets_postare` (`ID_postare`),
  ADD KEY `commnets_utilizator` (`ID_utilizator`);

--
-- Indexes for table `conversatii`
--
ALTER TABLE `conversatii`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_expeditor` (`ID_expeditor`),
  ADD KEY `ID_destinatar` (`ID_destinatar`);

--
-- Indexes for table `evenimente`
--
ALTER TABLE `evenimente`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `evenimente_utilizator` (`ID_utilizator`);

--
-- Indexes for table `ex_hobbies`
--
ALTER TABLE `ex_hobbies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `hobbies_exemple` (`ID_hobbie`),
  ADD KEY `hobbies_utilizator` (`ID_utilizator`);

--
-- Indexes for table `intrebari`
--
ALTER TABLE `intrebari`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `likes_postare` (`ID_postare`),
  ADD KEY `like_utilizator` (`ID_utilizator`);

--
-- Indexes for table `mesaje`
--
ALTER TABLE `mesaje`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `postari`
--
ALTER TABLE `postari`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `postari_utilizator` (`ID_utilizator`);

--
-- Indexes for table `raspunsuri`
--
ALTER TABLE `raspunsuri`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `raspunsuri_intrebari` (`ID_intrebare`);

--
-- Indexes for table `raspunsuri_date`
--
ALTER TABLE `raspunsuri_date`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `raspuns_dat_utilizator` (`ID_utilizator`),
  ADD KEY `raspuns_dat_raspuns` (`ID_raspuns`);

--
-- Indexes for table `tematici`
--
ALTER TABLE `tematici`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tematici_adaugate`
--
ALTER TABLE `tematici_adaugate`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `tematica_alegeri` (`ID_tematica`),
  ADD KEY `tematica_utilizator` (`ID_utilizator`);

--
-- Indexes for table `utilizatori`
--
ALTER TABLE `utilizatori`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `evenimente`
--
ALTER TABLE `evenimente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ex_hobbies`
--
ALTER TABLE `ex_hobbies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `intrebari`
--
ALTER TABLE `intrebari`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postari`
--
ALTER TABLE `postari`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `raspunsuri`
--
ALTER TABLE `raspunsuri`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `raspunsuri_date`
--
ALTER TABLE `raspunsuri_date`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tematici_adaugate`
--
ALTER TABLE `tematici_adaugate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `utilizatori`
--
ALTER TABLE `utilizatori`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `commnets_postare` FOREIGN KEY (`ID_postare`) REFERENCES `postari` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `commnets_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `conversatii`
--
ALTER TABLE `conversatii`
  ADD CONSTRAINT `ID_destinatar` FOREIGN KEY (`ID_destinatar`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ID_expeditor` FOREIGN KEY (`ID_expeditor`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `evenimente`
--
ALTER TABLE `evenimente`
  ADD CONSTRAINT `evenimente_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_exemple` FOREIGN KEY (`ID_hobbie`) REFERENCES `ex_hobbies` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `hobbies_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `like_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `likes_postare` FOREIGN KEY (`ID_postare`) REFERENCES `postari` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `postari`
--
ALTER TABLE `postari`
  ADD CONSTRAINT `postari_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `raspunsuri`
--
ALTER TABLE `raspunsuri`
  ADD CONSTRAINT `raspunsuri_intrebari` FOREIGN KEY (`ID_intrebare`) REFERENCES `intrebari` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `raspunsuri_date`
--
ALTER TABLE `raspunsuri_date`
  ADD CONSTRAINT `raspuns_dat_raspuns` FOREIGN KEY (`ID_raspuns`) REFERENCES `raspunsuri` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `raspuns_dat_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tematici_adaugate`
--
ALTER TABLE `tematici_adaugate`
  ADD CONSTRAINT `tematica_alegeri` FOREIGN KEY (`ID_tematica`) REFERENCES `tematici` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tematica_utilizator` FOREIGN KEY (`ID_utilizator`) REFERENCES `utilizatori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `panda_travel`
--
CREATE DATABASE IF NOT EXISTS `panda_travel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `panda_travel`;

-- --------------------------------------------------------

--
-- Table structure for table `tblachievements`
--

CREATE TABLE `tblachievements` (
  `ID` int(11) NOT NULL,
  `id_waypoint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblachievements`
--

INSERT INTO `tblachievements` (`ID`, `id_waypoint`) VALUES
(2, 248),
(3, 255);

-- --------------------------------------------------------

--
-- Table structure for table `tbladministrators`
--

CREATE TABLE `tbladministrators` (
  `username` varchar(100) NOT NULL,
  `nume` varchar(100) NOT NULL,
  `prenume` varchar(100) NOT NULL,
  `details` varchar(200) NOT NULL,
  `last_login_time` date NOT NULL,
  `creationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladministrators`
--

INSERT INTO `tbladministrators` (`username`, `nume`, `prenume`, `details`, `last_login_time`, `creationDate`) VALUES
('admin@panda.com', '', '', 'admin', '0000-00-00', '2020-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `ID` int(11) NOT NULL,
  `ID_waypoint` int(11) NOT NULL,
  `time` date NOT NULL,
  `details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblannouncements`
--

INSERT INTO `tblannouncements` (`ID`, `ID_waypoint`, `time`, `details`) VALUES
(1, 276, '2020-11-04', 'Detalii anunt1.'),
(2, 280, '2020-11-28', 'Detalii anunt2.');

-- --------------------------------------------------------

--
-- Table structure for table `tblcheckins`
--

CREATE TABLE `tblcheckins` (
  `user` varchar(100) NOT NULL,
  `ID_waypoint` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcheckins`
--

INSERT INTO `tblcheckins` (`user`, `ID_waypoint`, `Rating`, `time`) VALUES
('user@panda.com', 310, 5, '2020-11-08'),
('user@panda.com', 515, 5, '2020-11-08'),
('user@panda.com', 572, 5, '2020-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

CREATE TABLE `tbllocation` (
  `ID` int(11) NOT NULL,
  `City` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`ID`, `City`) VALUES
(1, 'Bucuresti'),
(2, 'Brasov'),
(3, 'Cluj-Napoca'),
(4, 'Constanta'),
(5, 'Alba-Iulia'),
(6, 'Sibiu');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` enum('User','Administrator','Google','Facebook') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`username`, `password`, `type`) VALUES
('', 'zxc', 'Google'),
('admin@panda.com', 'admin', 'Administrator'),
('aoc2223@gmail.com', 'zxc', 'Google'),
('boncuadriana@gmail.com', 'zxc', 'Google'),
('user@panda.com', 'user', 'User'),
('zxcaaaa@panda.com', 'aaaa', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tblrankings`
--

CREATE TABLE `tblrankings` (
  `ID` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `ranking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `user` varchar(100) NOT NULL,
  `priority` enum('Low','Medium','High','Urgent') NOT NULL,
  `details` varchar(200) NOT NULL,
  `status` enum('Open','In progress','Resolved','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltickets`
--

INSERT INTO `tbltickets` (`ID`, `date`, `user`, `priority`, `details`, `status`) VALUES
(2, '2020-11-07', 'user@panda.com', 'High', 'xcasdasd', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `username` varchar(100) NOT NULL,
  `nume` varchar(100) NOT NULL,
  `prenume` varchar(100) NOT NULL,
  `details` varchar(200) NOT NULL,
  `last_login_time` varchar(100) NOT NULL,
  `creationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`username`, `nume`, `prenume`, `details`, `last_login_time`, `creationDate`) VALUES
('', 'Boncu Adriana', 'Boncu Adriana', '', '09:13:51', '0000-00-00'),
('adriana@panda.com', 'boncu', 'adriana', '', '', '0000-00-00'),
('ana@panda.com', 'ana', 'maria', '', '', '0000-00-00'),
('andreea@panda.com', 'ionescu', 'andreea', '', '', '0000-00-00'),
('aoc2223@gmail.com', 'Sabin Olaru', 'Sabin Olaru', '', '00:33:44', '2020-07-11'),
('boncuadriana@gmail.com', 'Boncu Adriana', 'Boncu Adriana', '', '07:14:37', '0000-00-00'),
('buse@panda.com', 'buse', 'maria', '', '', '0000-00-00'),
('denisa@panda.com', 'popovici', 'denisa', '', '', '0000-00-00'),
('diana@panda.com', 'anghel', 'diana', '', '', '0000-00-00'),
('diana_elena@panda.com', 'popescu', 'diana', '', '', '0000-00-00'),
('elena@yahoo.com', 'popa', 'elena', '', '', '0000-00-00'),
('franci@panda.com', 'state', 'francisca', '', '', '0000-00-00'),
('georgiana@panda.com', 'boncu', 'goergiana', '', '', '0000-00-00'),
('ionut@panda.com', 'girla', 'ionut', '', '', '0000-00-00'),
('popescu@panda.com', 'popescu', 'darius', '', '', '0000-00-00'),
('user@panda.com', '', '', 'zxc', '23:24:44', '0000-00-00'),
('zxcaaaa@panda.com', '111', 'zxc', '', '0000-00-00', '2020-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_achievements`
--

CREATE TABLE `tbluser_achievements` (
  `ID` int(11) NOT NULL,
  `ID_achievements` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser_achievements`
--

INSERT INTO `tbluser_achievements` (`ID`, `ID_achievements`, `username`) VALUES
(3, 2, 'boncuadriana@gmail.com'),
(4, 3, 'user@panda.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblwaypointrequest`
--

CREATE TABLE `tblwaypointrequest` (
  `ID` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `details` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblwaypointrequest`
--

INSERT INTO `tblwaypointrequest` (`ID`, `user`, `city`, `address`, `details`, `votes`) VALUES
(2, 'boncuadriana@gmail.com', 'Constanta', 'Constanța, România', 'andreea zaragiu house', 8),
(3, 'user@panda.com', 'Constanta', 'Prelungirea Liliacului 7-9, Constanța 900007, România', 'Muzeul Militar Național', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblwaypointvotes`
--

CREATE TABLE `tblwaypointvotes` (
  `ID` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `ID_request` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblwaypointvotes`
--

INSERT INTO `tblwaypointvotes` (`ID`, `user`, `ID_request`) VALUES
(1, 'boncuadriana@gmail.com', 2),
(2, 'user@panda.com', 3),
(3, 'ana@panda.com', 2),
(4, 'andreea@panda.com', 2),
(5, 'aoc2223@gmail.com', 2),
(6, 'boncuadriana@gmail.com', 2),
(7, 'buse@panda.com', 2),
(8, 'denisa@panda.com', 2),
(9, 'diana@panda.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbwaypoints`
--

CREATE TABLE `tbwaypoints` (
  `ID` int(11) NOT NULL,
  `ID_city` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `latitudine` varchar(50) NOT NULL,
  `longitudine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbwaypoints`
--

INSERT INTO `tbwaypoints` (`ID`, `ID_city`, `address`, `info`, `rating`, `latitudine`, `longitudine`) VALUES
(248, 4, 'Strada Traian 53, Constanța 900725, România', 'Muzeul Marinei Române', 3, '44.1747222', '28.6486111'),
(249, 4, 'Constanța 900178, România', 'Muzeul de Istorie Națională și Arheologie din Constanța', 4, '44.173825', '28.6581701'),
(250, 4, 'Strada Traian, Constanța, România', 'Put al galeriilor subterane tomitane', 5, '44.175434', '28.6543964'),
(251, 4, 'Bulevardul Tomis nr.32, Constanța 900742, România', 'Muzeul de artă populară', 6, '44.1763387', '28.6548571'),
(252, 4, 'Bulevardul Tomis 82-84, Constanța 900178, România', 'Muzeul de artă Constanța', 7, '44.1789272', '28.6518133'),
(253, 4, 'Iesire Terminal, Constanța, România', 'Farul Regele Carol I', 8, '44.158006', '28.657168'),
(254, 4, 'Strada Vasile Alecsandri 10, Constanța 900178, România', 'Monument Istoric Casa \"Avocat Ion Barzan\"', 9, '44.176384', '28.6545103'),
(255, 4, 'Bulevardul Ferdinand 41-35, Constanța 900178, România', 'Galeriile Amfora', 10, '44.17520349999999', '28.6451082'),
(256, 4, 'Strada Dragoș Vodă, Constanța, România', 'Cetatea Tomis de la Constanţa - Poarta de Nord', 11, '44.1778102', '28.65359419999999'),
(257, 4, 'Intrare Terminal Pasageri, Constanța, România', 'Muzeul Portului', 12, '44.1614988', '28.6576156'),
(258, 4, 'Piața Ovidiu 12, Constanța 900178, România', 'Edificiul Roman cu Mozaic', 13, '44.1731491', '28.6582966'),
(259, 4, 'Strada Mircea cel Bătrân 30, Constanța 900178, România', 'Monument Istoric - Casa', 14, '44.1766522', '28.656409'),
(260, 4, 'Strada Arhiepiscopiei 26, Constanța 900178, România', 'Muzeul de Sculptură „Ion Jalea”', 15, '44.1708333', '28.6605556'),
(261, 5, 'Strada Mihai Viteazu 12-14, Alba Iulia 510010, România', 'Muzeul Național al Unirii', 1, '46.0681591', '23.5710084'),
(262, 5, 'Strada Unirii, Alba Iulia, România', 'Muzeul Principia', 2, '46.0684222', '23.572154'),
(263, 5, 'Piața Iuliu Maniu 8, Alba Iulia 510094, România', 'Gizella udvar', 3, '46.0716717', '23.5811981'),
(264, 5, 'Strada Mitropolit Andrei Şaguna 2, Alba Iulia, România', 'Scena Unirii', 4, '46.0694842', '23.571811'),
(265, 5, 'Strada Unirii 3, Alba Iulia, România', 'Museikon Alba Iulia', 5, '46.06969180000001', '23.569566'),
(266, 5, 'Alba Iulia, România', 'Cetatea alba iulia', 6, '46.07327249999999', '23.5804886'),
(267, 5, 'Alba Iulia, România', 'Centrul de Adunare Bethel', 7, '46.0793375', '23.5830438'),
(268, 5, 'Strada Gabriel Bethlen, Alba Iulia, România', 'Palatul Apor', 8, '46.0703576', '23.5719582'),
(269, 5, 'Strada Muzeului, Alba Iulia, România', 'Sala Unirii', 9, '46.06821129999999', '23.5713789'),
(270, 5, 'Strada Cloșca, Alba Iulia, România', 'Republic Of Alba Office', 10, '46.0645707', '23.5600623'),
(271, 5, 'Strada Atelierului 12, Alba Iulia 510001, România', 'HangarF', 11, '46.09961939999999', '23.6046'),
(272, 5, 'Calea Moților, Numărul 5A, Alba Iulia, România', 'Cetatea Alba Carolina', 12, '46.0686127', '23.5716639'),
(273, 5, 'Strada Gabriel Bethlen 1, Alba Iulia 510009, România', 'Biblioteca Batthyaneum', 13, '46.070213', '23.5704819'),
(274, 5, 'Strada Mihai Viteazu 16, Alba Iulia 510010, România', 'Catedrala Încoronării', 14, '46.0684433', '23.5695782'),
(275, 5, 'A10, 515903, România', 'Museums autobahn', 15, '46.1673712', '23.6581364'),
(276, 6, 'Strada Eduard Albert Bielz 62, Sibiu 550031, România', 'Muzeul Etnografic al Landlerilor', 1, '45.7898586', '24.1172808'),
(277, 6, 'Piața Mare 4 - 5, Sibiu 550163, România', 'Muzeul Național Brukenthal', 2, '45.7965519', '24.1506657'),
(278, 6, 'Str. Școala de Înot 4, Sibiu 550005, România', 'Muzeul de Vânătoare „August von Spiess”', 3, '45.7866145', '24.1469225'),
(279, 6, 'Strada Mitropoliei 2, Sibiu 550179, România', 'Casa Altemberger - Muzeul de Istorie', 4, '45.7969795', '24.1495667'),
(280, 6, 'Piața Mică 26 Ground Floor, Sibiu 550182, România', 'Muzeul de Farmacie', 5, '45.79831', '24.1520647'),
(281, 6, 'Piața Mică 21, Sibiu 550182, România', 'Muzeul de Etnografie și Artă Populară Săsească „Emil Sigerus”', 6, '45.7984083', '24.1512247'),
(282, 6, 'Strada Cetății 1, Sibiu 550160, România', 'Muzeul de Istorie Naturală', 7, '45.7948697', '24.1546811'),
(283, 6, 'Bulevardul Victoriei 5, Sibiu 557260, România', 'Monument Glorie Eterna', 8, '45.79083259999999', '24.1464797'),
(284, 6, 'Entrance from Piata Mare, 4, Brukenthal Museum - Second floor, Piața Mare 5, Sibiu 550163, România', 'Galeria de Artă Românească', 9, '45.7964', '24.1507307'),
(285, 6, 'Strada Mitropoliei 30, Sibiu 550179, România', 'Muzeul Bisericii Evanghelice C.A.', 10, '45.7940829', '24.146364'),
(286, 6, 'Bulevardul Victoriei 1-3, Sibiu 550024, România', 'Statuie George Cosbuc', 11, '45.791177', '24.1467922'),
(287, 6, 'Casa Hermes, Piața Mică 11, Sibiu 550182, România', 'Muzeul de Etnografie Universală „Franz Binder', 12, '45.7976384', '24.1509202'),
(288, 6, 'Sibiu, România', 'Ecomuzeul Regional Sibiu', 13, '45.78', '24.15'),
(289, 6, 'Piața Albert Huet Evangelical Cathedral, Sibiu 550182, România', 'Expoziția Ferula', 14, '45.79769960000001', '24.1499735'),
(290, 6, '5, Bulevardul Victoriei, Holul central Casa Armatei, Sibiu 550024, România', 'Muzeul Clubului Sportiv al Armatei Steaua București', 15, '45.7907152', '24.1465102'),
(423, 3, 'Old City Center, Cluj-Napoca, România', 'Piata Muzeului', 1, '46.7712101', '23.6236353'),
(424, 3, 'City Center, Cluj-Napoca, România', 'Casa lui Matei Corvin', 2, '46.7712101', '23.6236353'),
(425, 3, 'Babeş-Bolyai University,Faculty of Sociology and Social work 128-130 Bvd. 21 Dec, Cluj-Napoca 400604', 'Museum of Pedestrians (Muzeul Pietonilor)', 3, '46.775391', '23.608641'),
(426, 3, 'Cluj-Napoca, România', 'Silvia Anca Roman', 4, '46.7712101', '23.6236353'),
(427, 3, 'Strada Între Lacuri 22, Cluj-Napoca 400000, România', 'Rața de la balcon', 5, '46.7767051', '23.6236542'),
(428, 3, 'Strada Aurel Vlaicu 10, Cluj-Napoca 400124, România', 'Arta Graffiti Cluj', 6, '46.7792332', '23.6201498'),
(429, 3, 'Strada Buftea, Cluj-Napoca 400606, România', 'Plasmasphera - Muzeu interactiv de stiinta si iluzii', 7, '46.7778999', '23.6063263'),
(430, 3, 'Cluj-Napoca, România', 'Statuie General Mărdărescu', 8, '46.7737397', '23.6218822'),
(431, 3, 'Bulevardul Eroilor 12, Cluj-Napoca 400129, România', 'Transylvania Cowboy Museum Showroom', 9, '46.7693619', '23.5926729'),
(432, 3, 'Piața Unirii 30, Cluj-Napoca 400000, România', 'Muzeul de Artă', 10, '46.7705742', '23.5904859'),
(433, 3, 'Strada Alexandru Borza 15, Cluj-Napoca 400000, România', 'Muzeul Gradinii Botanice', 11, '46.7622373', '23.587566'),
(434, 3, 'Strada Constantin Daicoviciu 2, Cluj-Napoca 400000, România', 'Muzeul Național de Istorie a Transilvaniei', 12, '46.7715987', '23.5863069'),
(435, 3, 'Strada Memorandumului 21, Cluj-Napoca 400114, România', 'Muzeul Etnografic al Transilvaniei', 13, '46.7692647', '23.5866402'),
(436, 3, 'Calea Turzii 28/b, Cluj-Napoca 400193, România', 'Transylvania Cowboy Cottage and Museum', 14, '46.7656472', '23.5974022'),
(437, 3, 'Cluj-Napoca, România', 'Arhivele Naționale', 15, '46.7875054', '23.6054875'),
(583, 2, 'Strada Cerbului 13, Brașov 500015, România', 'Rope Street Museum', 1, '45.6392561', '25.5889904'),
(584, 2, 'Piața Sfatului 30, Brașov 500025, România', 'Muzeul Județean de Istorie Brașov', 2, '45.6423174', '25.5888213'),
(585, 2, 'Bulevardul Eroilor 21, Brașov 500030, România', 'Muzeul de Artă', 3, '45.6449852', '25.5935821'),
(586, 2, 'Piața Sfatului 15, Brașov 500031, România', 'Muzeul Civilizației Urbane', 4, '45.6415616', '25.5891216'),
(587, 2, 'Unnamed Road, Brașov, România', 'Centru Vechi', 5, '45.6418518', '25.5890036'),
(588, 2, 'Piața Sfatului 25, Brașov, România', 'Casa Mureșenilor', 6, '45.64240359999999', '25.588325'),
(589, 2, 'Căminul 10, Strada Memorandului 43, Brașov 500045, România', 'Как добавлять', 7, '45.6556702', '25.5799197'),
(590, 2, 'Piața Unirii 2-3, Brașov 500123, România', 'Muzeul Prima Școală Românească', 8, '45.635834', '25.581201'),
(591, 2, 'Strada George Coșbuc 9, Brașov 500015, România', 'Bastionul Țesătorilor', 9, '45.6369876', '25.5889867'),
(592, 2, 'Strada Apollonia Hirscher nr 20, Brașov, România', 'Galeria M3', 11, '45.640431', '25.5898287'),
(593, 2, 'Strada Poarta Schei 22, Brașov, România', 'Rathaus Kronstadt', 12, '45.63956', '25.5869032'),
(594, 2, 'George Cosbuc, Brașov, România', 'Muzeul Sporturilor', 13, '45.6374387', '25.5885919'),
(595, 2, 'Aleea Tiberiu Brediceanu, Brașov, România', 'Bastionul Postăvarilor', 14, '45.64220299999999', '25.5977491'),
(596, 2, 'Strada Doctor Gheorghe Baiulescu 9, Brașov 500107, România', 'Casa Memorială Ștefan Baciu', 15, '45.63778689999999', '25.5864647'),
(597, 1, 'Calea Victoriei 49-53, București 010063, România', 'Muzeul Național de Artă', 1, '44.43936679999999', '26.095874'),
(598, 1, 'E81, București 030167, România', 'Future Museum', 3, '44.4337109', '26.1013042'),
(599, 1, 'Calea Victoriei 12, București 030026, România', 'Muzeul Național de Istorie a României Bucureşti', 2, '44.4314422', '26.0974598'),
(600, 1, 'C4J2+7H, Strada Soarelui, București 030167, România', 'Romanian Kitsch Museum', 4, '44.4306875', '26.1014375'),
(601, 1, 'Sector 5, București 050563, România', 'Muzeul Național de Artă Contemporană', 5, '44.4280206', '26.0865354'),
(602, 1, 'Bulevardul Hristo Botev 38, București 030167, România', 'Dracula Museum', 6, '44.4324363', '26.1088854'),
(603, 1, 'Strada Anghel Saligny 1, București 030167, România', 'Holocaust Memorial', 7, '44.4329141', '26.0941601'),
(604, 1, 'Bulevardul Ion C. Brătianu 2, București 030167, România', 'Muzeul Municipiului București - Palatul Suțu', 8, '44.43482969999999', '26.1023426'),
(605, 1, 'Strada Lipscani nr 41, București 030167, România', 'Muzeul Micul Paris', 9, '44.432068', '26.1008311'),
(606, 1, 'Calea Moșilor 136, București 030167, România', 'Солаковия хан - седалище на БРЦК в Букурещ', 10, '44.4365366', '26.1117535'),
(607, 1, 'Strada C. A. Rosetti 8, București 010283, România', 'Muzeul „Theodor Aman”', 11, '44.4402492', '26.0981257'),
(608, 1, 'Strada Doamnei 8, București 030167, România', 'Muzeul Băncii Naționale', 12, '44.4330556', '26.0997222'),
(609, 1, 'Strada Parfumului 25-27, București 030841, România', 'MUSEUM OF ROMANIAN RECORDS', 13, '44.4284595', '26.1171996'),
(610, 1, 'Strada Spătarului 22, București 030167, România', 'Muzeul Theodor Pallady', 14, '44.439097', '26.1134155'),
(611, 1, 'Strada Vasile Adamache 11, București, România', 'Muzeul Holocaustului', 15, '44.4295862', '26.1084013');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblachievements`
--
ALTER TABLE `tblachievements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_achi_waypoint` (`id_waypoint`);

--
-- Indexes for table `tbladministrators`
--
ALTER TABLE `tbladministrators`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_announcements_waypoint` (`ID_waypoint`);

--
-- Indexes for table `tblcheckins`
--
ALTER TABLE `tblcheckins`
  ADD PRIMARY KEY (`user`,`ID_waypoint`),
  ADD KEY `fk_checkins_waypoint` (`ID_waypoint`),
  ADD KEY `fk_checkins_users` (`user`);

--
-- Indexes for table `tbllocation`
--
ALTER TABLE `tbllocation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tblrankings`
--
ALTER TABLE `tblrankings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_rankings_users` (`user`);

--
-- Indexes for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `tb_tickets_users` (`user`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbluser_achievements`
--
ALTER TABLE `tbluser_achievements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_achi_user` (`username`),
  ADD KEY `fk_user_achi` (`ID_achievements`);

--
-- Indexes for table `tblwaypointrequest`
--
ALTER TABLE `tblwaypointrequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_requestway_users` (`user`);

--
-- Indexes for table `tblwaypointvotes`
--
ALTER TABLE `tblwaypointvotes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_votes_users` (`user`),
  ADD KEY `fk_votes_request` (`ID_request`);

--
-- Indexes for table `tbwaypoints`
--
ALTER TABLE `tbwaypoints`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_waypoints_location` (`ID_city`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblachievements`
--
ALTER TABLE `tblachievements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbllocation`
--
ALTER TABLE `tbllocation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblrankings`
--
ALTER TABLE `tblrankings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser_achievements`
--
ALTER TABLE `tbluser_achievements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblwaypointrequest`
--
ALTER TABLE `tblwaypointrequest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblwaypointvotes`
--
ALTER TABLE `tblwaypointvotes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblachievements`
--
ALTER TABLE `tblachievements`
  ADD CONSTRAINT `fk_achi_waypoint` FOREIGN KEY (`id_waypoint`) REFERENCES `tbwaypoints` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblrankings`
--
ALTER TABLE `tblrankings`
  ADD CONSTRAINT `fk_rankings_users` FOREIGN KEY (`user`) REFERENCES `tblusers` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD CONSTRAINT `tb_tickets_users` FOREIGN KEY (`user`) REFERENCES `tblusers` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbluser_achievements`
--
ALTER TABLE `tbluser_achievements`
  ADD CONSTRAINT `fk_achi_user` FOREIGN KEY (`username`) REFERENCES `tblusers` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_achi` FOREIGN KEY (`ID_achievements`) REFERENCES `tblachievements` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblwaypointrequest`
--
ALTER TABLE `tblwaypointrequest`
  ADD CONSTRAINT `fk_requestway_users` FOREIGN KEY (`user`) REFERENCES `tblusers` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblwaypointvotes`
--
ALTER TABLE `tblwaypointvotes`
  ADD CONSTRAINT `fk_votes_request` FOREIGN KEY (`ID_request`) REFERENCES `tblwaypointrequest` (`ID`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_votes_users` FOREIGN KEY (`user`) REFERENCES `tblusers` (`username`) ON UPDATE NO ACTION;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'tblusers', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tblachievements\",\"tbladministrators\",\"tblannouncements\",\"tblcheckins\",\"tbllocation\",\"tbllogin\",\"tblrankings\",\"tbltickets\",\"tblusers\",\"tbluser_achievements\",\"tblwaypointrequest\",\"tblwaypointvotes\",\"tbwaypoints\"],\"table_structure[]\":[\"tblachievements\",\"tbladministrators\",\"tblannouncements\",\"tblcheckins\",\"tbllocation\",\"tbllogin\",\"tblrankings\",\"tbltickets\",\"tblusers\",\"tbluser_achievements\",\"tblwaypointrequest\",\"tblwaypointvotes\",\"tbwaypoints\"],\"table_data[]\":[\"tblachievements\",\"tbladministrators\",\"tblannouncements\",\"tblcheckins\",\"tbllocation\",\"tbllogin\",\"tblrankings\",\"tbltickets\",\"tblusers\",\"tbluser_achievements\",\"tblwaypointrequest\",\"tblwaypointvotes\",\"tbwaypoints\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hack\",\"table\":\"conversatii\"},{\"db\":\"hack\",\"table\":\"evenimente\"},{\"db\":\"hack\",\"table\":\"comments\"},{\"db\":\"hack\",\"table\":\"mesaje\"},{\"db\":\"hack\",\"table\":\"postari\"},{\"db\":\"hack\",\"table\":\"utilizatori\"},{\"db\":\"hack\",\"table\":\"tematici\"},{\"db\":\"hack\",\"table\":\"tematici_adaugate\"},{\"db\":\"hack\",\"table\":\"raspunsuri_date\"},{\"db\":\"hack\",\"table\":\"raspunsuri\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('hack', 'comments', 'text'),
('hack', 'evenimente', 'descriere'),
('hack', 'postari', 'imagine'),
('hack', 'raspunsuri', 'raspuns'),
('hack', 'tematici_adaugate', 'poza'),
('panda_travel', 'tblannouncements', 'details'),
('panda_travel', 'tbllocation', 'City'),
('panda_travel', 'tbllogin', 'username'),
('panda_travel', 'tblrankings', 'user'),
('panda_travel', 'tbltickets', 'user'),
('panda_travel', 'tbluser_achievements', 'username'),
('panda_travel', 'tblwaypointrequest', 'user'),
('panda_travel', 'tblwaypointvotes', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hack', 'tematici_adaugate', '{\"sorted_col\":\"`tematici_adaugate`.`ID_utilizator`  DESC\"}', '2020-12-05 22:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-06 07:09:38', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":282}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
