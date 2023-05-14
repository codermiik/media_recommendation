-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 06:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `birthday` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`name`, `email`, `password`, `birthday`) VALUES
('william', 'ianmombo@gmail.com', '5756', '2007-02-05'),
('Vera', 'marthatingo555@gmail.com', '5756', '2004-02-09'),
('Mombo', 'momo@gmail.com', '5756', '2004-02-09'),
('kinoti', 'tomodhiambo123@gmail.com', '5756', '2023-04-05'),
('william', 'williamsumba2019@gmail.co', '5756', '2015-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `title` varchar(50) NOT NULL,
  `emotion` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `watched` tinyint(1) NOT NULL DEFAULT 0,
  `tobewatched` tinyint(1) NOT NULL DEFAULT 0,
  `platform` varchar(20) NOT NULL,
  `rating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title`, `emotion`, `description`, `favorite`, `watched`, `tobewatched`, `platform`, `rating`) VALUES
('Amélie', 'happy', 'This French film is a charming, whimsical tale about a young woman who decides to improve the lives of those around her in Paris.', 0, 0, 1, 'Netflix', '5 Stars'),
('Dead Poets Society', 'Sad', 'This movie stars Robin Williams as a charismatic English teacher who inspires his students to seize the day and embrace their individuality. ', 0, 0, 0, 'Amazon Prime Video', '5 Stars'),
('Die Hard', 'excited', '\"Die Hard\" stars Bruce Willis as John McClane, a New York City cop who finds himself trapped in a Los Angeles skyscraper during a terrorist attack. With a perfect blend of humor and explosive action, \"Die Hard\" is a classic that never gets old.', 0, 0, 0, 'Hulu', '4.5 Stars'),
('Fight Club', 'angry', 'This cult classic is about a man who creates an underground fight club as a way to cope with his mundane existence. It is a dark and thought-provoking movie that explores themes of masculinity and anti-establishment. ', 0, 0, 0, 'Hulu', '5 Stars'),
('Fury Road', 'excited', 'A post-apocalyptic action masterpiece that follows the titular character as he teams up with a group of rebels to overthrow a tyrannical ruler in a high-speed chase across the desert.', 0, 0, 0, 'HBO Max', '5 Stars'),
('John Wick', 'excited', ' action film. When a group of thugs kill his beloved dog, John Wick goes on a rampage of revenge that leaves no one standing. With expertly choreographed fight scenes and a unique world-building, \"John Wick\" is a must-see for any action fan.', 0, 0, 0, 'Netflix', '4.5 Stars'),
('Kill Bill: Vol. 1', 'angry', 'This is a revenge story about a former assassin who seeks vengeance against her former colleagues who betrayed her. It is a visually stunning and action-packed movie that is sure to leave you feeling empowered. ', 0, 0, 0, 'Netflix', '5 Stars'),
('Lovey Dovey', 'love', 'A true love story between a Mechanic and a Lawyer looking for peace in the busy city of New York. Will they find love? Watch now!', 0, 0, 0, 'Netflix', '4.5 Stars'),
('Mad Max: Fury Road', 'angry', 'This post-apocalyptic action movie is a non-stop adrenaline ride that will have you on the edge of your seat. It stars Tom Hardy and Charlize Theron and features some of the most breathtaking action sequences ever put on film.', 0, 0, 0, 'Amazon Prime Video', '4.5 Stars'),
('Mamma Mia!', 'happy', 'This musical features the music of ABBA and stars Meryl Streep, Pierce Brosnan, and Colin Firth. It\'s a joyful celebration of love, family, and friendship set on a Greek island.', 0, 0, 1, 'HBO Max', '4.5 Stars'),
('Raiders of the Lost Ark', 'excited', 'A classic adventure movie follows archaeologist Indiana Jones as he races against Nazis to find the mythical Ark of the Covenant. With iconic set pieces and a charming lead performance from Harrison Ford, this film is a beloved favorite that never gets old. ', 0, 0, 0, 'Amazon Prime Video', '5 Stars'),
('Romantic Affair', 'love', 'Meet Vera, a beautiful girl who falls in love and becomes the happiest girl to ever exist in the busy streets of New York. Live in her world today and feel experience romance.', 0, 0, 0, 'HBO', '5 Stars'),
('Singin\' in the ', 'happy', 'SThis classic musical is a joyful celebration of the golden age of Hollywood. Gene Kelly and Debbie Reynolds star in this tale of love and fame in the movie business.', 0, 0, 1, 'HBO Max', '4.5 Stars'),
('Tales of Kennar', 'sad', 'A comedy skit. Kennar is a young kenyan comedian who\'s video will get your rib cracking. You sad? Binge watch this to get your humor high and sunken sorrow.', 0, 0, 0, 'Showmax', '4.5 Stars'),
('The  Redemption', 'angry', 'This classic movie starring Tim Robbins and Morgan Freeman is a story of hope and perseverance in the face of adversity. It is an inspiring movie that will help you find peace and perspective when you\'re feeling angry. ', 0, 0, 0, 'Netflix', '4.5 Stars'),
('The Dark Knight', 'angry', 'This superhero movie starring Christian Bale as Batman and the late Heath Ledger as the Joker is a masterpiece in storytelling and acting. The movie is gritty and emotional, making it the perfect choice for when you need to blow off some steam. ', 0, 0, 0, 'Amazon Prime Video', '5 Stars'),
('The Grand Budap', 'happy', 'This Wes Anderson film is a whimsical, comedic adventure about a hotel concierge and his lobby boy, who get caught up in a murder mystery. ', 0, 0, 1, 'Netflix', '5 Stars'),
('The Green Mile ', 'Sad', 'This is a supernatural drama based on a novel by Stephen King. It tells the story of a death row corrections officer who develops a special relationship with an inmate who possesses mysterious healing powers. ', 0, 0, 0, 'Hulu', '5 Stars'),
('The Matrix', '', '\"The Matrix\" follows computer programmer Neo as he discovers that the world as he knows it is a computer simulation created by machines. With mind-bending special effects and exhilarating fight scenes, this film is a must-see for anyone looking for an adrenaline rush.', 0, 0, 0, 'Netflix', '4.5 Stars'),
('The Perks of Being a Wallflower', 'Sad', 'This coming-of-age drama is based on a novel by Stephen Chbosky. It follows a teenage boy named Charlie as he navigates his way through high school and deals with past trauma. ', 0, 0, 0, 'Netflix', '5 Stars'),
('The Princess Bride', 'happy', 'This beloved fairy tale adventure has something for everyone: romance, sword fights, giants, and comedy. ', 0, 0, 1, 'Amazon Prime Vi', '5 Stars'),
('The Pursuit of Happyness ', 'Sad', 'This movie is based on a true story of a struggling salesman, Chris Gardner, who becomes homeless with his young son. He then lands an unpaid internship at a stockbrokerage firm and tries to turn his life around. ', 0, 0, 0, 'Netflix', '4.5 Stars'),
('The Shawshank Redemption ', 'Sad', 'This is a classic prison drama based on a novella by Stephen King. It follows a banker who is wrongly convicted of murder and his friendship with a fellow inmate. ', 0, 0, 0, 'HBO Max', '5 Stars');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `title` varchar(50) NOT NULL,
  `emotion` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `favorite` tinyint(1) DEFAULT 0,
  `to be watched` tinyint(1) DEFAULT 0,
  `watched` tinyint(1) DEFAULT 0,
  `platform` varchar(20) NOT NULL,
  `rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`title`, `emotion`, `description`, `favorite`, `to be watched`, `watched`, `platform`, `rating`) VALUES
('Happy by Pharrell Williams', 'happy', 'A cheerful and upbeat song that\'s guaranteed to put a smile on your face. ', 0, 0, 0, 'Apple Music', '5 Stars'),
('Good Vibrations by The Beach Boys', 'happy', 'A classic feel-good tune with catchy lyrics and an infectious melody.', 0, 0, 0, 'Spotify', '4.5 Stars'),
('I Gotta Feeling by Black Eyed Peas', 'happy', 'An upbeat and optimistic song that\'s great for any occasion. ', 0, 0, 0, ' YouTube Music', '5 Stars'),
('Can\'t Stop the Feeling by Justin Timberlake ', 'happy', 'A feel-good song with an infectious beat that\'s perfect for dancing. ', 0, 0, 0, 'Apple Music', '5 Stars'),
('Lovely Day by Bill Withers ', 'happy', 'A soulful and uplifting song that celebrates the simple joys of life. ', 0, 0, 0, 'Spotify', '4.5 Stars'),
('Happy Together\" by The Turtles', 'happy', 'A cheerful and optimistic song that celebrates love and togetherness. ', 0, 0, 0, ' YouTube Music', '5 Stars'),
('Someone Like You by Adele', 'Sad', 'This heart-wrenching ballad is perfect for when you\'re feeling blue. ', 0, 0, 0, 'Apple Music', '5 Stars'),
('Everybody Hurts\" by R.E.M.', 'Sad', 'This classic tune is a reminder that we all have tough times, and it\'s okay to feel down. ', 0, 0, 0, 'Spotify', '4.5 Stars'),
('Say You Love Me by Jessie Ware', 'Sad', 'This emotional song about love and loss is sure to tug at your heartstrings. ', 0, 0, 0, 'Tidal', '5 Stars'),
('Fix You by Coldplay ', 'Sad', 'This song is a beautiful reminder that even in the darkest moments, there is always hope. ', 0, 0, 0, 'Youtube Music', '4.5 Stars'),
('Unsteady by X Ambassadors', 'Sad', 'This moving song about uncertainty and anxiety is sure to resonate with anyone going through a tough time. ', 0, 0, 0, 'Spotify ', '5 Stars'),
('Angry Chair\" by Alice in Chains', 'angry', 'A brooding song about inner turmoil. ', 0, 0, 0, 'Apple Music', '5 Stars'),
('Smells Like Teen Spirit\" by Nirvana', 'angry', 'A grunge classic that perfectly captures teenage angst.', 0, 0, 0, 'Youtube Music', '4.5 Stars'),
('Killing Me Softly With His Song by Fugees', 'angry', 'A soulful song about a troubled relationship. ', 0, 0, 0, 'Spotify', '5 Stars'),
('\"Down with the Sickness\" by Disturbed', 'angry', 'This intense metal song is perfect for working out your anger.', 0, 0, 0, 'Apple Music', '4.5 Stars'),
('Fight the Power by Public Enemy ', 'angry', 'This classic rap song is great for when you\'re feeling angry about social injustice.', 0, 0, 0, 'Spotify', '5 Stars'),
('I Will Always Love You by Whitney Houston', 'love', 'a classic ballad about everlasting love. ', 0, 0, 0, 'Spotify', '5 Stars'),
('At Last by Etta James', 'love', 'A soulful and romantic tune about finally finding true love.', 0, 0, 0, 'Amazon Music', '4.5 Stars'),
('Unchained Melody by The Righteous Brothers', 'love', 'a passionate song about longing for love. ', 0, 0, 0, 'SoundCloud', '4.5 Stars'),
('My Heart Will Go On by Celine Dion', 'love', 'a powerful ballad about the strength of love.', 0, 0, 0, 'Deezer', '4.5 Stars'),
('My Heart Will Go On by Celine Dion', 'love', 'a powerful ballad about the strength of love.', 0, 0, 0, 'Napster', '4.5 Stars'),
('Can\'t Stop by Red Hot Chili Peppers ', 'excited', 'This high-energy rock song is perfect for getting pumped up and ready to take on the world.', 0, 0, 0, 'Spotify', '5 Stars'),
('Jump by Van Halen', 'excited', 'This classic rock anthem is all about letting loose and having a good time. It\'s guaranteed to get you jumping up and down with excitement. ', 0, 0, 0, 'Apple Music', '4.5 Stars'),
('Uptown Funk by Mark Ronson ft. Bruno Mars', 'excited', 'This funky pop hit is the perfect dance party starter. With its catchy beat and Bruno Mars\' smooth vocals, you\'ll be singing and dancing along in no time. ', 0, 0, 0, 'YouTube Music', '5 Stars'),
('I Gotta Feeling by Black Eyed Peas', 'excited', 'This feel-good pop track is all about living in the moment and having a great time. It\'s perfect for when you\'re feeling excited about what\'s to come. ', 0, 0, 0, 'Spotify', '4.5 Stars'),
('Levels by Avicii (EDM)', 'excited', 'This upbeat electronic dance track is the perfect way to get your blood pumping and your feet moving. ', 0, 0, 0, 'Apple Music', '5 Stars'),
('Levels by Avicii ', 'excited', ' - This upbeat electronic dance track is the perfect way to get your blood pumping and your feet moving.', 0, 0, 0, 'Spotify', '4.5 Stars');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `title` varchar(50) NOT NULL,
  `emotion` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `favorite` tinyint(1) DEFAULT 0,
  `to be watched` tinyint(1) DEFAULT 0,
  `watched` tinyint(1) DEFAULT 0,
  `platform` varchar(20) NOT NULL,
  `rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`title`, `emotion`, `description`, `favorite`, `to be watched`, `watched`, `platform`, `rating`) VALUES
('Happier\" by Gretchen', 'happy', 'A podcast that provides practical and insightful tips on how to be happier in everyday life.', 0, 0, 0, 'Spotify', '5 Stars'),
('The TED Radio Hour by NPR', 'happy', 'An inspiring podcast that explores a wide range of topics through interviews with TED speakers. ', 0, 0, 0, ' Apple Podcasts', '4.5 Stars'),
('Armchair Expert by Dax', 'happy', 'A candid and humorous podcast featuring interviews with celebrities and experts. ', 0, 0, 0, 'Stitcher', '5 Stars'),
('The Happiness Lab by Dr. Laurie', 'happy', 'A podcast that explores the science of happiness, with insights from psychology and neuroscience. ', 0, 0, 0, 'Spotify', '5 Stars'),
('The Daily Meditation Podcast by Mary ', 'happy', 'A daily podcast that provides guided meditations and mindfulness exercises for better mental health.', 0, 0, 0, 'Stitcher', '4.5 Stars'),
('The Hilarious World of Depression', 'sad', 'a funny and compassionate exploration of mental illness. ', 0, 0, 0, 'Google Podcasts', '4.5 Stars'),
('Terrible, Thanks for Asking', 'Sad', 'host Nora McInerny brings humor and empathy to stories of grief and hardship.', 0, 0, 0, 'Apple Podcasts', '5 Stars'),
('Unlocking Us', 'Sad', 'Researcher and author Brené Brown explores vulnerability, courage, and empathy. ', 0, 0, 0, 'Spotify', '5 Stars'),
('On Being', 'Sad', 'host Krista Tippett explores the big questions of life and spirituality with guests from a variety of backgrounds. ', 0, 0, 0, 'Apple Podcasts', '4.5 Stars'),
('WTF with Marc Maron', 'Sad', 'comedian Marc Maron interviews guests from the worlds of comedy, entertainment, and politics. ', 0, 0, 0, 'Google Podcasts', '5 Stars'),
('The Daily by The New York Times', 'angry', 'Get a daily dose of news and analysis from the world\'s top journalists.', 0, 0, 0, 'Apple Podcasts', '5 Stars'),
('Dear Sugars by WBUR', 'angry', 'Hosted by Cheryl Strayed and Steve Almond, Dear Sugars offers frank advice on love, friendship, family, and more. ', 0, 0, 0, 'Stitcher', '5 Stars'),
('Calm Pills by DJ Seroton', 'angry', 'This podcast features instrumental music designed to help you relax and de-stress. ', 0, 0, 0, 'iTunes', '5 Stars'),
('On Being with Krista Tippett', 'angry', 'Listen to Krista Tippett\'s interviews with some of the world\'s most insightful and inspiring people. ', 0, 0, 0, 'Apple Podcasts', '4.5 Stars'),
('The Hilarious World of Depression', 'angry', 'This podcast offers candid and funny conversations about mental health with comedians, musicians, and writers. ', 0, 0, 0, 'Spotify', '5 Stars'),
('Modern Love', 'love', 'This podcast is based on the popular New York Times column with the same name, where actors read essays about love, heartbreak, and relationships.', 0, 0, 0, 'Apple Podcasts', '5 Stars'),
('Love Letters', 'love', 'A podcast that answers love and relationship questions. Hosted by Meredith Goldstein, it provides advice and commentary on love, dating, and everything in between.', 0, 0, 0, 'Spotify', '5 Stars'),
('Where Should We Begin?', 'love', 'In this podcast, couples sit down with therapist Esther Perel and share their relationship struggles.', 0, 0, 0, 'Audible', '4.5 Stars'),
('The Heart', 'love', 'An audio art project and podcast about intimacy and humanity, The Heart features personal stories about love, relationships, and the human condition. ', 0, 0, 0, 'Apple Podcasts', '5 Stars'),
('Dear Sugars', 'love', 'Hosted by Cheryl Strayed and Steve Almond, this podcast offers advice on love, relationships, and anything in between.', 0, 0, 0, 'Spotify', '4.5 Stars'),
('Stuff You Should Know', 'excited', 'A fun and informative podcast that explores a wide range of topics from science and history to pop culture. ', 0, 0, 0, 'Apple Podcasts', '5 Stars'),
('The Daily', 'excited', 'A news podcast from the New York Times that covers the top stories of the day. Perfect for staying up to date with current events. ', 0, 0, 0, 'Spotify', '4.5 Stars'),
('Radiolab', 'excited', 'A highly-produced podcast that explores big ideas in science, philosophy, and culture. Each episode is a masterclass in storytelling. ', 0, 0, 0, 'Apple Podcasts', '5 Stars'),
('The Joe Rogan Experience', 'excited', 'A long-form interview podcast hosted by comedian and UFC commentator Joe Rogan. Guests range from celebrities to academics and cover a wide range of topics.', 0, 0, 0, 'Spotify', '5 Stars'),
('Oprah\'s SuperSoul Conversations', 'excited', 'A spiritual and motivational podcast hosted by Oprah Winfrey. Featuring interviews with thought leaders and authors, it\'s perfect for those seeking inspiration. ', 0, 0, 0, 'Spotify', '4.5 Stars');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `title` varchar(50) NOT NULL,
  `emotion` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `favorite` tinyint(1) DEFAULT 0,
  `tobewatched` tinyint(1) DEFAULT 0,
  `watched` tinyint(1) DEFAULT 0,
  `platform` varchar(20) NOT NULL,
  `rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`title`, `emotion`, `description`, `favorite`, `tobewatched`, `watched`, `platform`, `rating`) VALUES
('Friends', 'Sad', ' This classic sitcom follows the lives of six friends living in New York City. Their humorous antics and heartwarming moments make it a feel-good show that has stood the test of time.', 0, 0, 0, 'Netflix', '5 Stars'),
('Ted Lasso', 'Sad', 'Ted Lasso is a heartwarming comedy-drama series about an American football coach who moves to England to manage a struggling Premier League soccer team. With its charming characters, witty humor, and feel-good message, Ted Lasso is a must-watch for anyone looking for a happy series.', 0, 0, 1, 'Apple TV+', '4.5 Stars'),
('Modern Family', 'Sad', 'Modern Family is a sitcom about a diverse and quirky family living in Los Angeles. With its clever writing, hilarious cast of characters, and heartwarming moments, Modern Family is a feel-good series that\'s perfect for a family night in.', 0, 0, 1, 'Hulu', '5 Stars'),
('The Marvelous Mrs. Maisel', 'Sad', 'The Marvelous Mrs. Maisel is a comedy-drama series about a housewife in 1950s New York City who discovers a talent for stand-up comedy. With its gorgeous sets, fabulous costumes, and hilarious writing, The Marvelous Mrs. Maisel is a must-watch for anyone looking for a happy series.', 0, 0, 1, 'Amazon Prime Video', '4.5 Stars'),
('Crazy Ex-Girlfriend', 'Sad', 'Crazy Ex-Girlfriend is a musical-comedy series about a woman who moves across the country to be with her ex-boyfriend. With its catchy musical numbers, clever writing, and positive message, Crazy Ex-Girlfriend is a feel-good series that\'s perfect for a sing-along.', 0, 0, 1, 'Netflix', '5 Stars'),
('Outlander', 'love', 'Outlander is a time-traveling romance series based on the book series of the same name by Diana Gabaldon. It follows Claire Randall, a WWII nurse who is transported back to 18th century Scotland. There, she falls in love with Jamie Fraser, a Scottish Highlander. ', 0, 0, 0, 'Starz', '4.5 Stars'),
('Modern Love', 'love', ' Based on the popular New York Times column of the same name, Modern Love is an anthology series that explores the many different facets of love and relationships in the modern world. Featuring an all-star cast and heartfelt stories, this show is a must-watch for anyone who has ever been in love.', 0, 0, 0, 'Amazon Prime Video', '5 Stars'),
('The Crown', 'love', ' A historical drama that explores the reign of Queen Elizabeth II, The Crown features stunning sets, costumes, and performances from a talented cast of actors. While the show focuses primarily on the politics and history of the time period, there are also many romantic subplots that will keep viewer', 0, 0, 0, 'Netflix', '4.5 Stars'),
('Normal People', 'love', 'A modern love story about two high school students who fall in love, but struggle to navigate their relationship as they enter adulthood. ', 0, 0, 0, 'Hulu', '5 Stars'),
('Love Life', 'Love', ' A romantic comedy anthology series that explores the ups and downs of modern relationships through the eyes of different characters. ', 0, 0, 0, 'HBO Max', '4.5 Stars'),
('Aerial America', 'angry', 'This documentary series takes viewers on a scenic tour of the United States from above. ', 0, 0, 0, 'Amazon Prime Video', '5 Stars'),
('Terrace House', 'angry', 'This Japanese reality series follows a group of young adults as they live together in a shared house', 0, 0, 0, 'Netflix', '4.5 Stars'),
('Midnight Diner', 'angry', ' This Japanese drama series is set in a small diner that\'s only open at night, where the owner and his patrons share their stories over food', 0, 0, 0, 'Netflix', '5 Stars'),
('Planet Earth', 'angry', 'David Attenborough\'s nature documentary series takes viewers on a breathtaking tour of the natural world.', 0, 0, 0, 'BBC iPlayer', '4.5 Stars'),
('The Great British Bake Off', 'angry', ' This competition series features amateur bakers creating delicious treats in a friendly, supportive environment.', 0, 0, 0, 'Netflix', '4.5 Stars'),
('The Boys', 'excited', 'This superhero series takes a dark and satirical approach to the genre. It follows a group of vigilantes who are trying to take down corrupt superheroes who abuse their power.', 0, 0, 0, 'Amazon Prime Video', '5 Stars'),
('Cobra Kai', 'excited', 'This martial arts comedy-drama series is a sequel to the Karate Kid films. It follows the rivalries and conflicts between the original characters and their respective dojos, as they compete in the All-Valley Karate Tournament.', 0, 0, 0, 'Netflix', '4.5 Stars'),
('Game of Thrones', 'excited', 'Based on the book series by George R.R. Martin, this fantasy series is set in the mythical world of Westeros. It follows several noble families who are fighting for control of the Iron Throne, while an ancient evil threatens to destroy them all.', 0, 0, 0, 'HBO', '5 Stars'),
('The Mandalorian', 'excited', 'Set in the Star Wars universe, this action-packed series follows the adventures of a lone bounty hunter who is hired to capture a mysterious and powerful child.', 0, 0, 0, 'Apple TV+', '4.5 Stars'),
('Black Mirror ', 'excited', 'This anthology series explores the darker side of technology and its impact on society. Each episode presents a standalone story that examines the consequences of our obsession with the digital world.', 0, 0, 0, 'Netflix', '5 Stars'),
('The Good Place', 'happy', 'A philosophical comedy series that explores life, death, and what comes after. The show follows Eleanor Shellstrop, a woman who mistakenly finds herself in the \"Good Place\" after her death, and her journey to become a better person.', 0, 1, 0, 'Netflix', '4.5 Stars'),
('Brooklyn Nine-Nine', 'happy', 'A police comedy series set in the fictional 99th precinct of the NYPD in Brooklyn. The show follows the humorous antics of detectives and the precinct\'s captain as they solve crimes while dealing with their personal lives.', 0, 1, 0, 'Hulu', '5 Stars'),
('The Marvelous Mrs. Maisel', 'happy', 'A period comedy-drama set in the 1950s that follows Miriam \"Midge\" Maisel, a housewife who discovers her talent for stand-up comedy after her husband leaves her. The show explores Midge\'s journey to become a successful comedian.', 0, 1, 0, 'Amazon Prime Video', '4.5 Stars'),
('The Office ', 'happy', 'A mockumentary-style comedy series set in the Scranton, Pennsylvania branch of the Dunder Mifflin Paper Company. The show follows the daily lives of the employees and their eccentric boss, Michael Scott, as they navigate office politics and their personal lives.', 0, 1, 0, 'Peacock', '4.5 Stars'),
('Stranger Things', 'happy', 'A science-fiction horror series set in the 1980s that follows a group of kids in a small town as they uncover supernatural mysteries and battle otherworldly forces. The show combines nostalgia with a unique storyline to create a thrilling viewing experience.', 1, 0, 0, 'Netflix', '5 Stars');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
