--------------------------------------------------------

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

--
-- Dumping data for table `conversatii`
--

INSERT INTO `conversatii` (`ID`, `ID_expeditor`, `ID_destinatar`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 5, 6);

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
  `mesaj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mesaje`
--

INSERT INTO `mesaje` (`ID`, `ID_conversatie`, `ID_destinatar`, `ID_expeditor`, `mesaj`) VALUES
(1, 1, 1, 6, 'Buna!'),
(2, 2, 1, 6, 'Ce faci?'),
(3, 3, 5, 6, 'Buna ziua!');

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
COMMIT;

