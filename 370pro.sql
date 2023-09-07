-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 08:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `DiscussionId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`DiscussionId`, `UserId`, `UserName`, `Comment`) VALUES
(1, 101, 'JohnDoe21', 'I really enjoyed Stranger Things!'),
(2, 202, 'MarySmith84', 'Game of Thrones is my all-time favorite.'),
(3, 303, 'AlexJohnson', 'Attack on Titan has such intense moments.'),
(4, 404, 'SarahBrown', 'Stranger Things keeps me on the edge of my seat.'),
(5, 505, 'RobertGreen', 'Looking forward to more thriller shows.'),
(6, 606, 'EmilyWhite', 'Stranger Things and Game of Thrones are amazing.'),
(7, 707, 'MichaelTaylor', 'Black Mirror offers thought-provoking stories.'),
(8, 808, 'LisaAnderson', 'Fantasy genre always captures my imagination.'),
(9, 909, 'DanielLee', 'Attack on Titan is a masterpiece.'),
(10, 1010, 'SophiaWong', 'Any recommendations for family-friendly shows?'),
(11, 1111, 'WilliamHarris', 'Chernobyl was a hauntingly accurate depiction.'),
(12, 1212, 'OliviaBrown', 'Interstellar is mind-bending.'),
(13, 1313, 'JamesMiller', 'Documentaries provide valuable insights.'),
(14, 1414, 'AvaClark', 'Breaking Bad and The Witcher are my top picks.'),
(15, 1515, 'EthanYoung', 'Stranger Things and Game of Thrones are epic.'),
(16, 1516, 'tgnr', 'ki ase jibone, parai holo jibon'),
(17, NULL, 'Unknown', 'areh joss'),
(18, 1516, 'tgnr', 'areh mama ki obostha'),
(19, 1516, 'tgnr', 'just chill chill'),
(22, NULL, 'Unknown', 'whats up'),
(23, 1516, 'tgnr', 'good morning');

-- --------------------------------------------------------

--
-- Table structure for table `tvshows`
--

CREATE TABLE `tvshows` (
  `ShowId` int(11) NOT NULL,
  `ShowName` varchar(200) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Genre` varchar(200) DEFAULT NULL,
  `Rating` decimal(3,1) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `ShowType` varchar(50) DEFAULT NULL,
  `MovieLink` varchar(500) DEFAULT NULL,
  `MoviePoster` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tvshows`
--

INSERT INTO `tvshows` (`ShowId`, `ShowName`, `ReleaseDate`, `Genre`, `Rating`, `Language`, `ShowType`, `MovieLink`, `MoviePoster`) VALUES
(1001, 'Stranger Things', '2016-07-15', 'Science Fiction, Horror, Fantasy', '4.8', 'English', 'Series', 'https://fmovies.to/tv/stranger-things-yj91j/1-1', 'https://static.bunnycdn.ru/i/cache/images/9/9e/9eafafa5e66c70949ea1fc90d75f3b06.jpg'),
(1002, 'Breaking Bad', '2008-01-20', 'Crime, Drama, Thriller', '4.9', 'English', 'Series', 'https://fmovies.to/tv/breaking-bad-1rlq/1-1', 'https://static.bunnycdn.ru/i/cache/images/4/4c/4c159d6242073e043af6f4b488704973.jpg'),
(1003, 'The Mandalorian', '2019-11-12', 'Science Fiction, Action, Adventure', '4.7', 'English', 'Series', 'https://fmovies.to/tv/the-mandalorian-30552/1-1', 'https://static.bunnycdn.ru/i/cache/images/d/d8/d8dc979c6502908cd290a63a792a2751.jpg'),
(1004, 'Friends', '1994-09-22', 'Comedy, Romance', '4.5', 'English', 'Series', 'https://fmovies.to/tv/friends-3rvj9/1-1', 'https://static.bunnycdn.ru/i/cache/images/5/5d/5d0dafce1ea12454d1332a2368f5f49f.jpg'),
(1005, 'Game of Thrones', '2011-04-17', 'Fantasy, Drama, Adventure', '4.6', 'English', 'Series', 'https://fmovies.to/tv/game-of-thrones-92p7q/1-1', 'https://static.bunnycdn.ru/i/cache/images/b/bf/bf51aca050fb82de485ce9fe4cd3ce96.jpg'),
(1006, 'The Crown', '2016-11-04', 'Drama, History', '4.7', 'English', 'Series', 'https://fmovies.to/tv/the-crown-zk6ol/1-1', 'https://static.bunnycdn.ru/i/cache/images/d/d4/d4688aa92b3f43f8a1d1aa2183116a30.jpg'),
(1007, 'Black Mirror', '2011-12-04', 'Science Fiction, Drama, Thriller', '4.8', 'English', 'Series', 'https://fmovies.to/tv/black-mirror-mvmjz/1-1', 'https://static.bunnycdn.ru/i/cache/images/b/b5/b5bdc4e9d9fc1305eeb3c27aa814915e.jpg'),
(1008, 'The Simpsons', '1989-12-17', 'Animation, Comedy', '4.5', 'English', 'Series', 'https://fmovies.to/tv/the-simpsons-60n5z/1-1', 'https://static.bunnycdn.ru/i/cache/images/a/a7/a76e763526cdf85b0cb2129b325c00fb.jpg'),
(1009, 'Attack on Titan', '2013-04-07', 'Action, Dark Fantasy', '4.8', 'Japanese', 'Anime', 'https://fmovies.to/tv/attack-on-titan-qnovw/1-1', 'https://static.bunnycdn.ru/i/cache/images/9/9c/9cfd1d13e483137e46795b64d7d23d0f.jpg'),
(1010, 'The Office', '2005-03-24', 'Comedy', '4.6', 'English', 'Series', 'https://static.bunnycdn.ru/i/cache/images/d/d5/d5d93ccc2807ae58d95dcef650bff4c7.jpg', ''),
(1011, 'Chernobyl', '2019-05-06', 'Drama, History, Thriller', '4.9', 'English', 'Series', 'https://fmovies.to/tv/chernobyl-xjwjq/1-1', 'https://static.bunnycdn.ru/i/cache/images/c/cc/cc705ac1f23a2f80283dcc49dbb2d9fc.jpg'),
(1012, 'Death Note', '2006-10-04', 'Thriller, Psychological, Supernatural', '4.7', 'Japanese', 'Anime', 'https://fmovies.to/tv/death-note-xo4q/1-1', 'https://static.bunnycdn.ru/i/cache/images/b/bc/bc65bf486a994421fd5a559e5e050558.jpg'),
(1014, 'Interstellar', '2014-11-05', 'Science Fiction, Adventure, Drama', '4.6', 'English', 'Movie', 'https://fmovies.to/movie/interstellar-kwj4/1-1', 'https://static.bunnycdn.ru/i/cache/images/f/fe/fea728b65a0993dabaab2ba0786f97d6.jpg'),
(1015, 'The Witcher', '2019-12-20', 'Fantasy, Action, Adventure', '4.7', 'English', 'Series', 'https://fmovies.to/tv/the-witcher-701kj/1-1', 'https://static.bunnycdn.ru/i/cache/images/8/8d/8d2de696dca5f6b75dd088d2c897b2a0.jpg'),
(1016, 'Forrest Gump', '1994-07-06', 'Drama, Romance', '4.8', 'English', 'Movie', 'https://fmovies.to/movie/forrest-gump-w1z7/1-1', 'https://static.bunnycdn.ru/i/cache/images/4/46/46a6861782cd3aab3ca8662a10e27a54.jpg'),
(1017, 'Ozark', '2017-07-21', 'Crime, Drama, Thriller', '4.9', 'English', 'movie', 'https://fmovies.to/movie/a-farewell-to-ozark-828mn/1-1', 'https://static.bunnycdn.ru/i/cache/images/b/be/be692fbcec7da0c43fc9578837194b3d.jpg'),
(1018, 'Jack Ryan', '2018-08-30', 'Action, Drama, Thriller', '4.7', 'English', 'Series', 'https://fmovies.to/tv/tom-clancys-jack-ryan-j2kpy/1-1', 'https://static.bunnycdn.ru/i/cache/images/2/25/255dfbbae60e3e7535e6ba2456813fda.jpg'),
(1019, 'Spider-Man: No Way Home', '2021-12-17', 'Action, Adventure, Sci-Fi', '4.6', 'English', 'Movie', 'https://fmovies.to/movie/spider-man-no-way-home-9j1m0/1-1', 'https://static.bunnycdn.ru/i/cache/images/2/29/29cbafe961249b9f9dc107e35de30a72.jpg'),
(1020, 'My Hero Academia', '2016-04-03', 'Action, Superhero, Comedy', '4.7', 'Japanese', 'Anime', 'https://fmovies.to/movie/my-hero-academia-two-heroes-7wql7/1-1', 'https://static.bunnycdn.ru/i/cache/images/9/94/941251d72dd195d73f7a10de5a8ed204.jpg'),
(1021, 'Inception', '2010-07-16', 'Science Fiction, Action, Adventure', '4.8', 'English', 'Movie', 'https://fmovies.to/movie/inception-zlzm/1-1', 'https://static.bunnycdn.ru/i/cache/images/5/52/5242e99e4b9025933507fab280cf5dc5.jpg'),
(1022, 'Naruto', '2002-10-03', 'Action, Adventure, Fantasy', '4.6', 'Japanese', 'Anime', 'https://fmovies.to/tv/naruto-ykyp/1-1', 'https://static.bunnycdn.ru/i/cache/images/6/67/67393aae900cbeab0f4a2cda7cfabcfb.jpg'),
(1023, 'The Matrix', '1999-03-31', 'Science Fiction, Action', '4.9', 'English', 'Movie', 'https://fmovies.to/movie/the-matrix-jv58/1-1', 'https://static.bunnycdn.ru/i/cache/images/e/ed/ed1b6fec69ee40263a9fe7eceac6bcac.jpg'),
(1024, 'One Piece', '1999-10-20', 'Adventure, Action, Comedy', '4.7', 'Japanese', 'Anime', 'https://fmovies.to/movie/one-piece-movie-10-strong-world-mv77/1-1', 'https://static.bunnycdn.ru/i/cache/images/c/ce/ce80772c3eaa14e32f4f6f48fce6f380.jpg'),
(1025, 'Pulp Fiction', '1994-10-14', 'Crime, Drama', '4.8', 'English', 'Movie', 'https://fmovies.to/movie/pulp-fiction-m2zz/1-1', 'https://static.bunnycdn.ru/i/cache/images/7/76/76a15671278d128d8b6f5c530f289e14.jpg'),
(1026, 'Fullmetal Alchemist: Brotherhood', '2009-04-05', 'Action, Adventure, Fantasy', '4.9', 'Japanese', 'Anime', 'https://fmovies.to/tv/fullmetal-alchemist-brotherhood-45l7/1-1', 'https://static.bunnycdn.ru/i/cache/images/b/b0/b0a934d02062e9748056e06bf677feed.jpg'),
(1027, 'Avatar', '2009-12-18', 'Science Fiction, Action, Adventure', '4.6', 'English', 'Movie', 'https://fmovies.to/movie/avatar-qn9j/1-1', 'https://static.bunnycdn.ru/i/cache/images/7/7f/7f8545a5d26c0482bca170dbf97acf81.jpg'),
(1028, 'Sex Education', '2019-01-11', 'Comedy, Drama, Fantasy', '4.7', 'English', 'Series', 'https://fmovies.to/tv/sex-education-nkr0j/1-1', 'https://static.bunnycdn.ru/i/cache/images/6/63/63df10ea5e9a4ee54857bc681fcaa3be.jpg'),
(1029, 'The Dark Knight', '2008-07-18', 'Action, Crime, Drama', '4.9', 'English', 'Movie', 'https://fmovies.to/movie/the-dark-knight-rises-jvz2', 'https://static.bunnycdn.ru/i/cache/images/0/0d/0db6594809bbf6bd9068244e3f3db218.jpg'),
(1030, 'Cowboy Bebop', '1998-04-03', 'Action, Space, Drama', '4.8', 'Japanese', 'Anime', 'https://fmovies.to/tv/cowboy-bebop-6w24/1-1', 'https://static.bunnycdn.ru/i/cache/images/5/52/52d27cb7aa3f3ddf4dafb2545aadeeba.jpg'),
(1031, 'The Shawshank Redemption', '1994-09-23', 'Drama', '4.9', 'English', 'Movie', 'https://fmovies.to/movie/the-shawshank-redemption-1nom/1-1', 'https://static.bunnycdn.ru/i/cache/images/3/39/39ec4679c5032ddfc7a3fe494805f1ed.jpg'),
(1032, 'Dragon Ball Z Kai', '2009-04-05', 'Action, Action, Adventure', '4.8', 'Japanese', 'Anime', 'https://fmovies.to/tv/dragon-ball-z-kai-w56k/1-1', 'https://static.bunnycdn.ru/i/cache/images/9/90/90aa2fbec4358196957203efd2e1afb5.jpg'),
(1033, 'The Avengers', '2012-05-04', 'Action, Adventure, Sci-Fi', '4.7', 'English', 'Movie', 'https://fmovies.to/movie/the-avengers-68y7/1-1', 'https://static.bunnycdn.ru/i/cache/images/9/93/933c0f46384ec869067cbade23bbdb20.jpg'),
(1034, 'Death Note: The Last Name', '2006-11-03', 'Thriller, Psychological, Supernatural', '4.6', 'Japanese', 'Movie', 'https://fmovies.to/movie/death-note-the-last-name-3k2r/1-1', 'https://static.bunnycdn.ru/i/cache/images/9/9d/9d1e36cbcd33e29bee72371506552cd5.jpg'),
(1035, 'Westworld', '2016-10-02', 'Science Fiction, Drama, Mystery', '4.7', 'English', 'Series', 'https://fmovies.to/movie/westworld-pvpq/1-1', 'https://static.bunnycdn.ru/i/cache/images/6/62/62d51a5c6dc4f79725421e9d1b245257.jpg'),
(1036, 'Spirited Away', '2001-07-20', 'Animation, Adventure, Family', '4.8', 'Japanese', 'Movie', 'https://fmovies.to/movie/spirited-away-zl6m/1-1', 'https://static.bunnycdn.ru/i/cache/images/7/7f/7faabf9ae59f4c4a628b2ba6315e32cd.jpg'),
(1037, 'Sherlock', '2010-07-25', 'Crime, Drama, Mystery', '4.9', 'English', 'Series', 'https://fmovies.to/tv/sherlock-yq3xx', 'https://static.bunnycdn.ru/i/cache/images/9/93/93d3e5fdd297571e06547d945fdd3b18.jpg'),
(1038, 'Neon Genesis Evangelion', '1995-10-04', 'Action, Dementia, Drama', '4.7', 'Japanese', 'Anime', 'https://fmovies.to/movie/neon-genesis-evangelion-the-end-of-evangelion-17r7m/1-1', 'https://static.bunnycdn.ru/i/cache/images/8/87/876d7ba191a8cc835a63a63aecc9dfe6.jpg'),
(1039, 'The Godfather', '1972-03-24', 'Crime, Drama', '4.9', 'English', 'Movie', 'https://fmovies.to/movie/the-godfather-q9o3', 'https://static.bunnycdn.ru/i/cache/images/b/b2/b28861266574af44a3e2e0f79d8e628f.jpg'),
(1040, 'Money Heist', '2017-05-02', 'Action, Crime, Drama', '4.8', 'Spanish', 'Series', 'https://fmovies.to/tv/money-heist-oloj4/1-1', 'https://static.bunnycdn.ru/i/cache/images/5/52/52b7547234bf94a9dce2bd6269805285.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `LikedCategory` varchar(50) DEFAULT NULL,
  `Watched` varchar(5000) DEFAULT NULL,
  `Planned` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Password`, `UserName`, `Email`, `Country`, `LikedCategory`, `Watched`, `Planned`) VALUES
(101, 'Pass123!', 'JohnDoe21', 'john.doe@example.com', 'USA', 'Action', '(1001, \"Stranger Things\"), (1003, \"The Mandalorian\")', '(1002, \"Breaking Bad\"), (1010, \"The Office\")'),
(202, 'Secret567', 'MarySmith84', 'mary.smith@example.com', 'Canada', 'Comedy', '(1005, \"Game of Thrones\"), (1006, \"The Crown\")', '(1004, \"Friends\"), (1014, \"Interstellar\")'),
(303, 'SecurePwd55', 'AlexJohnson', 'alex.johnson@example.com', 'UK', 'Drama', '(1008, \"The Simpsons\"), (1009, \"Attack on Titan\")', '(1011, \"Chernobyl\"), (1012, \"Death Note\")'),
(404, 'P@ssw0rd12', 'SarahBrown', 'sarah.brown@example.com', 'Australia', 'Romance', '(1013, \"Stranger Things\"), (1015, \"The Witcher\")', ''),
(505, 'Strong123$', 'RobertGreen', 'robert.green@example.com', 'Germany', 'Thriller', '', ''),
(606, 'SafePass2023', 'EmilyWhite', 'emily.white@example.com', 'USA', 'Adventure', '', '(1001, \"Stranger Things\"), (1005, \"Game of Thrones\")'),
(707, 'Pa$$w0rd789', 'MichaelTaylor', 'michael.taylor@example.com', 'Canada', 'Sci-Fi', '(1007, \"Black Mirror\"), (1008, \"The Simpsons\")', '(1003, \"The Mandalorian\"), (1010, \"The Office\")'),
(808, 'Secret9876', 'LisaAnderson', 'lisa.anderson@example.com', 'UK', 'Fantasy', '', ''),
(909, 'Protected55', 'DanielLee', 'daniel.lee@example.com', 'Australia', 'Animation', '(1009, \"Attack on Titan\"), (1014, \"Interstellar\")', ''),
(1010, 'P@ssw0rd2023', 'SophiaWong', 'sophia.wong@example.com', 'Singapore', 'Family', '', ''),
(1111, 'SafePwd67', 'WilliamHarris', 'william.harris@example.com', 'USA', 'Mystery', '(1011, \"Chernobyl\"), (1015, \"The Witcher\")', ''),
(1212, 'StrongPwd13', 'OliviaBrown', 'olivia.brown@example.com', 'Canada', 'Horror', '(1021, \'Inception\')', '(1013, \"Stranger Things\"), (1014, \"Interstellar\"),(1023, \'Avatar\'),(1009, \'Attack on Titan\')'),
(1313, 'SecurePass22', 'JamesMiller', 'james.miller@example.com', 'UK', 'Documentary', '', ''),
(1414, 'Protected321', 'AvaClark', 'ava.clark@example.com', 'Australia', 'Fantasy', '(1002, \"Breaking Bad\"), (1015, \"The Witcher\")', ''),
(1515, 'SecretPwd77', 'EthanYoung', 'ethan.young@example.com', 'USA', 'Action', '(1001, \"Stranger Things\"), (1005, \"Game of Thrones\")', ''),
(1516, 'password', 'tgnr', 'tgnr@gmail.com', 'Bangladesh', 'Romance', '(1014, \'Interstellar\'),(1039, \'The Godfather\')', '(1002, \'Breaking Bad\'),(1038, \'Neon Genesis Evangelion\')');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`DiscussionId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `tvshows`
--
ALTER TABLE `tvshows`
  ADD PRIMARY KEY (`ShowId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `DiscussionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
