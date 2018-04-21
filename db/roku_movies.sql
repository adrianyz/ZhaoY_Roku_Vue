-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2018 at 07:27 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `roku_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Love it! Love it! Love it!', '2018-04-18 17:56:57', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Fantasy'),
(3, 'Science Fiction'),
(4, 'Thriller'),
(5, 'Animation'),
(6, 'Drama'),
(7, 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, '1.jpg', 'Guardians of the Galaxy', '2014', '2h 2m', 'Brash space adventurer Peter Quill (Chris Pratt) finds himself the quarry of relentless bounty hunters after he steals an orb coveted by Ronan, a powerful villain. To evade Ronan, Quill is forced into an uneasy truce with four disparate misfits: gun-toting Rocket Raccoon, treelike-humanoid Groot, enigmatic Gamora, and vengeance-driven Drax the Destroyer. But when he discovers the orb\'s true power and the cosmic threat it poses, Quill must rally his ragtag group to save the universe.', '1.mp4', 'August 1, 2014 '),
(2, '2.jpg', 'Guardians of the Galaxy Vol. 2', '2017', '2h 18m', 'Peter Quill and his fellow Guardians are hired by a powerful alien race, the Sovereign, to protect their precious batteries from invaders. When it is discovered that Rocket has stolen the items they were sent to guard, the Sovereign dispatch their armada to search for vengeance. As the Guardians try to escape, the mystery of Peter\'s parentage is revealed.', '2.mp4', 'April 19, 2017'),
(3, '3.jpg', 'Thor: Ragnarok', '2017', '2h 10m', 'Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger. Thor\'s quest for survival leads him in a race against time to prevent the all-powerful Hela from destroying his home world and the Asgardian civilization.', '3.mp4', ' November 3, 2017'),
(4, '4.jpg', 'War for the Planet of the Apes', '2017', '2h 20m', 'Caesar (Andy Serkis) and his apes are forced into a deadly conflict with an army of humans led by a ruthless colonel (Woody Harrelson). After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind. As the journey finally brings them face to face, Caesar and the colonel are pitted against each other in an epic battle that will determine the fate of both of their species and the future of the planet.', '4.mp4', 'July 10, 2017'),
(5, '5.jpg', 'Coco', '2017', '1h 49m', 'Despite his family\'s generations-old ban on music, young Miguel dreams of becoming an accomplished musician like his idol Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead. After meeting a charming trickster named Héctor, the two new friends embark on an extraordinary journey to unlock the real story behind Miguel\'s family history.', '5.mp4', 'October 27, 2017'),
(6, '6.jpg', 'The Lego Batman Movie', '2017', '2h 9m', 'There are big changes brewing in Gotham, but if Batman (Will Arnett) wants to save the city from the Joker\'s (Zach Galifianakis) hostile takeover, he may have to drop the lone vigilante thing, try to work with others and maybe, just maybe, learn to lighten up. Maybe his superhero sidekick Robin (Michael Cera) and loyal butler Alfred (Ralph Fiennes) can show him a thing or two.', '6.mp4', 'February 10, 2017'),
(7, '7.jpg', 'Despicable Me 3', '2017', '1h 36m', 'The mischievous Minions hope that Gru will return to a life of crime after the new boss of the Anti-Villain League fires him. Instead, Gru decides to remain retired and travel to Freedonia to meet his long-lost twin brother for the first time. The reunited siblings soon find themselves in an uneasy alliance to take down the elusive Balthazar Bratt, a former 1980s child star who seeks revenge against the world.', '7.mp4', 'June 30, 2017'),
(8, '8.jpg', 'The Boss Baby', '2017', '1h 37m', 'A new baby\'s arrival impacts a family, told from the point of view of a delightfully unreliable narrator -- a wildly imaginative 7-year-old named Tim. The most unusual Boss Baby (Alec Baldwin) arrives at Tim\'s home in a taxi, wearing a suit and carrying a briefcase. The instant sibling rivalry must soon be put aside when Tim discovers that Boss Baby is actually a spy on a secret mission, and only he can help thwart a dastardly plot that involves an epic battle between puppies and babies.', '8.mp4', 'March 31, 2017'),
(9, '9.jpg', 'Beauty and the Beast', '2017', '2h 10m', 'Belle (Emma Watson), a bright, beautiful and independent young woman, is taken prisoner by a beast (Dan Stevens) in its castle. Despite her fears, she befriends the castle\'s enchanted staff and learns to look beyond the beast\'s hideous exterior, allowing her to recognize the kind heart and soul of the true prince that hides on the inside.', '9.mp4', 'March 17, 2017'),
(10, '10.jpg', 'Jumanji: Welcome to the Jungle', '2017', '1h 59m', 'Four high school kids discover an old video game console and are drawn into the game\'s jungle setting, literally becoming the adult avatars they chose. What they discover is that you don\'t just play Jumanji - you must survive it. To beat the game and return to the real world, they\'ll have to go on the most dangerous adventure of their lives, discover what Alan Parrish left 20 years ago, and change the way they think about themselves - or they\'ll be stuck in the game forever.', '10.mp4', 'December 20, 2017'),
(11, '11.jpg', 'Paddington 2', '2017', '1h 44m', 'Settled in with the Brown family, Paddington the bear is a popular member of the community who spreads joy and marmalade wherever he goes. One fine day, he spots a pop-up book in an antique shop -- the perfect present for his beloved aunt\'s 100th birthday. When a thief steals the prized book, Paddington embarks on an epic quest to unmask the culprit before Aunt Lucy\'s big celebration.', '11.mp4', 'November 9, 2017'),
(12, '12.jpg', 'Ferdinand', '2017', '1h 48m', 'Ferdinand is a young bull who escapes from a training camp in rural Spain after his father never returns from a showdown with a matador. Adopted by a girl who lives on a farm, Ferdinand\'s peaceful existence comes crashing down when the authorities return him to his former captors. With help from a wisecracking goat and three hedgehogs, the giant but gentle bovine must find a way to break free before he squares off against El Primero, the famous bullfighter who never loses.', '12.mp4', 'December 14, 2017'),
(13, '13.jpg', 'Wonder', '2017', '1h 53m', 'Based on the New York Times bestseller, WONDER tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters fifth grade, attending a mainstream elementary school for the first time.', '13.mp4', 'November 16, 2017'),
(14, '14.jpg', 'Diary of a Wimpy Kid', '2010', '2 hours', 'Young Greg Heffley is looking forward to a long summer of just hanging out, but his mother throws a monkey wrench into his plans when she forces the entire family to take a road trip for a relative\'s birthday celebration. His eyes soon light up after he realizes that the excursion is his ticket to a gaming convention to meet YouTube sensation Mac Digby. Greg\'s imagination then kicks into overdrive as he sneakily hatches a scheme to attend the expo and gain some much-deserved fame.', '14.mp4', 'March 19, 2010'),
(15, '15.jpg', 'Goodbye Christopher Robin', '2017', '1h 47m', 'After leaving London for the English countryside, writer A.A. Milne starts to spin fanciful yarns about his son\'s growing collection of stuffed animals. These stories form the basis for \"Winnie-the-Pooh\" and \"The House at Pooh Corner,\" published respectively in 1926 and 1928. Milne and his family soon become swept up in the instant success of the books, while the enchanting tales bring hope and comfort to the rest of postwar England.', '15.mp4', 'November 23, 2017'),
(16, '16.jpg', 'Call Me by Your Name', '2017', '2h 12m', 'It\'s the summer of 1983, and precocious 17-year-old Elio Perlman is spending the days with his family at their 17th-century villa in Lombardy, Italy. He soon meets Oliver, a handsome doctoral student who\'s working as an intern for Elio\'s father. Amid the sun-drenched splendor of their surroundings, Elio and Oliver discover the heady beauty of awakening desire over the course of a summer that will alter their lives forever.', '16.mp4', 'October 20, 2017'),
(17, '17.jpg', 'Ready Player One', '2018', '2h 19m', 'From filmmaker Steven Spielberg comes the science fiction action adventure “Ready Player One,” based on Ernest Cline’s bestseller of the same name, which has become a worldwide phenomenon. The film is set in 2045, with the world on the brink of chaos and collapse. But the people have found salvation in the OASIS, an expansive virtual reality universe created by the brilliant and eccentric James Halliday (Mark Rylance). ', '17.mp4', 'March 30, 2018'),
(18, '18.jpg', 'Annihilation', '2018', '2 hours', 'Based on Jeff VanderMeer’s best-selling Southern Reach Trilogy, Annihilation stars Natalie Portman, Jennifer Jason Leigh, Gina Rodriguez, Tessa Thompson, Tuva Novotny and Oscar Isaac. It was written and directed by Alex Garland (Ex Machina, 28 Days Later).', '18.mp4', 'February 22, 2018'),
(19, '19.jpg', 'Black Panther', '2018', '2h 15m', 'After the death of his father, T\'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T\'Challa\'s mettle as king -- and as Black Panther -- gets tested when he\'s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.', '19.mp4', 'January 29, 2018'),
(20, '20.jpg', 'A Quiet Place', '2018', '1h 35m', 'If they hear you, they hunt you.', '20.mp4', 'April 3, 2018');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 2),
(6, 3, 3),
(7, 4, 3),
(8, 4, 4),
(9, 5, 2),
(10, 5, 5),
(11, 6, 1),
(12, 6, 5),
(13, 7, 2),
(14, 7, 5),
(15, 8, 2),
(16, 8, 5),
(17, 9, 2),
(18, 9, 5),
(19, 10, 1),
(20, 10, 3),
(21, 11, 2),
(22, 11, 5),
(23, 12, 1),
(24, 12, 5),
(25, 13, 6),
(26, 13, 7),
(27, 1, 3),
(28, 2, 3),
(29, 1, 7),
(30, 2, 7),
(31, 5, 7),
(32, 6, 7),
(33, 7, 7),
(34, 8, 7),
(35, 14, 7),
(36, 15, 6),
(37, 16, 6),
(38, 16, 7),
(39, 17, 2),
(40, 17, 4),
(41, 18, 2),
(42, 18, 4),
(43, 19, 2),
(44, 19, 3),
(45, 20, 4),
(46, 20, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL,
  `rating_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  MODIFY `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;