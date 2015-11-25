-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 01:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geolabclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
`id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e4bc334166cda62d8ca69adfb7467a21');

-- --------------------------------------------------------

--
-- Table structure for table `direction`
--

CREATE TABLE IF NOT EXISTS `direction` (
`id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direction`
--

INSERT INTO `direction` (`id`, `title`, `content`, `image`) VALUES
(1, '3D დიზაინი', 'კომპიუტერული ტექნოლოგიების განვითარების შედეგად შეცირდება მანძილი იდეიდან იდეის რეალიზაციამდე. ჩვენ ირგვლივ არსებული რეალობა უამრავ შეზღვუდვას უწესებს ადამიანის ფანტაზიას.  3D-ში კი შესაძლებელია ისეთი ობიექტების, პეიზაჟების, არსებების შექმნა რომლთა ნახვა, გადაღება რთულია ან რომლეთა ადგილი ჩვენ რეალობაში არ არის. აქ ყველაფერი ადამიანის ფანტაზიაზე და მის ცოდნაზე არის დამოკიდებული.  3D დიზაინის მიმართულებით, სწავლის პროცესი სტუდენტებისათვის სავსე იქნება აღმოჩენებით. სტუდენტებს რამოდენიმე პროგრამის ათვისება მოუწევთ. სწავლის პროცესში დიდი მნიშვნელობა ენიჭება პრაქტიკული დავალებების შესრულებას. სწავლის ბოლო ეტაპზე სტუდენტები საკუთარ პროექტებს განახორციელებენ.\r\n\r\nამ მიმართულების სტუდენტები შეისწავლიან 3D ობიექტების შექმნას, აგებას. მათ ვიზუალიზაციას. 3D ობიექტების ანიმაციას. სასწავლო პროცესს შესაბამისი სფეროს გამოცდილი პრაქტიკოსი სპეციალისტები გაუძღვებიან. პროფესორების მიერ განხორციელებილი პორექტების ნახვა შემდეგ ბმულზე არის შესაძლებებლი (ბმული). \r\n', '3dclass.jpg'),
(2, 'გრაფიკული დიზაინი', 'ადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალური ნიშნების ენაა, რომელიც თითქოს შეუმჩნევლად, სრულიად ბუნებრივად იმკვიდრებს ადგილს. \r\n\r\nმსოფლიოს სხვადასხვა კუთხეში მცხოვრები დიზაინერები დღეს ქმნიან მობილური აპლიკაციების, კომპიუტერული თამაშების, ვებგვერდების ინტერფეისებს, სხვადახვა სახის „აიქონებს“ რომლებიც სიტყვების, ტექსტის გარეშე გასაგები და ადვილად აღსაქმელია მსოფლიოს ნებისმიერ კუთხეში მცხოვრები ადამიანისათვის. \r\n\r\nდიზაინერები გრაფიკული გამოსახულებით ცდილობენ იასუბრონ. გრაფიკოსი დიზაინერი ხომ სხვასახვა ვიზუალური ელემენტების შერჩევით, შეხამებით (შრიფტი, გამოსახულება, ფერები და ა. შ.) ცდილობს გადასცეს აუდირტორიას გარკვეული ინფორმაცია, გზავნილი. ხანდახან გრაფიკულ დიზაინს „ვიზუალურ კომუნიკაციას“ უწოდებენ. ეს ტერმინი ხაზს უსვამს დიზაინის ფუნქციას მიანიჭოს შესაბამისი ფორმა ინფორმაციას. \r\n\r\nგრაფიკული დიზაინის ყველაზე დიდი გამოფენები სუპერმარკეტებშია მოწყობილი. სუპერმარკეტში ხომ დახლებიდან სხვადასხვა პროდუქტები ათასნაირ გზავნილებს გვიგზავნიან: მე ნატურალური ვარ, მე თანამედროვე ტექნოლოგიებით ვარ შექმნილი, მე ეკოლოგიურად სუფთა ვარ და ა. შ.\r\n \r\nგრაფიკული დიზაინის განვითარებას, ვიზუალური ნიშნების საყოველთაო გავრცელებას დიდად შეუწყო ხელი ელექტრო მოწყობილობებისა და კომპიუტერული ტექნიკის მასიურმა გამოყენებამ. ჩვენ ხომ კომპიუტერთან ურთიერთობას ძირითადად სიმბოლოებით ვახერხებთ. გარკვეულ სიმბოლოებზე „დაკლიკებით“ ვაძლევთ დავალებას და ხშირ შემთხვევაში კომპიუტერი სიმბოლოებითვე გვიბრუნდებს პასუხს. დღეს თითქმის არავინ არ კითხულობს ელექტრონული მოწყობილობის ინსტრუქციას ვინაიდან იმ გრაფიკული ნიშნების საშუელბით რომლებიც ელექტრონული მოწყობილობის ეკრანზეა გამოსახული ისედაც ყველაფერი გადსაგებია ჩვენთვის. \r\n\r\nამ კურსის ფარგლებში სტუდენტები თავად შექმნიან ელექტრონული მოწყობილობების, ვებგვერდების, მობილური აპლიკაციების დიზანს და აიქონებს რომლებიც გასაგები იქნება ნებისმიერი ადამიანისათვის. სასწავლო პროცესს შესაბამისი სფეროს გამოცდილი პრაქტიკოსი სპეციალისტები გაუძღვებიან. პროფესორების მიერ განხორციელებილი პორექტების ნახვა შემდეგ ბმულზე არის შესაძლებებლი (ბმული). \r\n', 'graphicclass.jpg'),
(3, 'პროგრამირება', 'ბევრს მიაჩნია, რომ კომპიუტერულ კოდთან მუშაობა, კომპიუტერის ენაზე საუბარი, მხოლოდ ტექნიკური განათლების მქონე ადამიანს შეუძლია, მაგრამ ეს ასე არ არის. მრავალ ქვეყანაში სხვადასხვა პროფესიის ადამიანები კომპიუტერულ კოდთან მუშაობას - „კოდინგს“ სწავლობენ. კომპიუტერულ კოდთან მუშაობა კიდევ ერთი ახალი ენის შესწავლას გავს. რადგან ყველას შეუძლია ისწავლოს უცხო ენა, პროგრამული კოდის შესწავლაც ნებისმიერი მსურველისთვის არის შესაძლებელი.   \r\n \r\nიმ საქმის დიდ ნაწილს, რომელსაც წარსულში ადამიანი აკეთებდა, დღეს კომპიუტერი ასრულებს. არავინ აწარმოებს რთულ გამოთვლებს კომპიუტერების ეპოქაში. ის, რაშიც დღეს ადამიანების დახმარება გვჭირდება, მომავალში კომპიუტერების საზრუნავი იქნება. ამიტომაც საჭიროა იმ ენის ცოდნა, რომლის საშუალებითაც კომპიუტერისათვის დავალების მიცემაა შესაძლებელი. დღეს პროგრამისტები ჯადოქრებს გვანან. ისინი მხოლოდ მათთვის და კომპიუტერისათვის გასაგები სიმბოლოების მანიპულაციით, სასწაულებს ახდენენ. პროგრამული კოდის ჯადოსნური სიტყვებით ადამინისათვის წარმოუდგენელ პროცესებს მართავენ. \r\n  \r\n2012 წლის დასაწყისში, ნიუ იორკის მერმა, მაიკლ ბლუმბერგმა (Michael Rubens Bloomberg) განაცხადა, რომ მან მიიღო გადაწყვეტილება მომავალი წლის განმავლობაში, მისი უშუალო მოვალეობების პარალელურად, პროგრამული ენების შესწავლასაც დაუთმოს დრო. ბლუმბერგის ნაბიჯი კიდევ ერთხელ ცხადყოფს, რომ პროგრამულ კოდთან მუშაობა ნებისმიერი პროფესიის ადამიანისათვის აუცილებელია.   \r\n  \r\n2014 წლის მიწურულს. ამერიკის პრეზიდენტი, ბარაკ ობამა „პროგრამირების საათს“ (Hour of Code) დაესწრო და თავადაც დაწერა პროგრამული კოდი. „პროგრამირების საათი“ ფართომასშტაბიანი კამპანიაა, რომლის ფარგლებშიც მთელ მსოფლიოში სხვადასხვა სასწავლებლების მოსწავლეები ერთი საათის განმავლობაში ეცნობიან პროგრამულ კოდთან მუშაობის საწყისებს. რათა ცადონ და დაინტერესდნენ.  როგორც ჟურნალისტებმა აღნიშნეს, ბარაკ ობამა პირველია ამერიკის პრეზიდენტებს შორის ვინც პროგრამული კოდი დაწერა.  \r\n\r\nამ კურსის ფარგლებში სტუდენტები შეარჩევენ ერთ-ერთ პროგრამულ ენას და შეისწავლიან მათ მიერ შერჩეულ პროგრამულ ენაზე პროგრამული პროდუქტის შექმნას. სტუდენტები მიღებული ცოდნის საფუძველზე შექმნიან ვებ სერვისის ან მობილურ აპლიკაციას.\r\n', 'programclass.jpg'),
(4, 'ელექტრონული პლათფორმები (ელექტრონული მოწყობილობების მართვა)', 'ტერმინი „ნივთების ინტერნეტი“  (Internet of Things, IoT) ისეთივე ახალია როგორც კონცეფცია რომელსაც იგი აღნიშნავს. მიუხედავად ამისა არც ისე შორსაა ის დრო, როდესაც ყველაფერი ჩვენ ირგვლივ ინტერნეტის საშუალებით ერთმანეთთან იქნება დაკავშირებული. როდესაც სპეციალისტები ამ ტერმინს განმარტავენ მსგავს მაგალითები მოყავთ: წარმოიდგინეთ რომ თქვენი ავტომობილი, ავტოფარეხი, ყავის მოსამზადებელი აპარატი და თქვენ აგარაკზე დამონტაჟებული გათბობის სისტემა ისევე როგორც ბევრი სხვა მოწყობილობა ერთიან ქსელშია ჩართული. თქვენ სამსახურიდან ბრუნდებით სახლში და როდესაც თქვენი მანქანა სახლს მიუახლოვდება, იგი ავტოფარეხს გადასცემს სიგნალს რომ მანქანა ახლოს არის სახლთან. ავტოფარეხი სიგნალს გადაამუშავებს და კარს გაგიღებთ. ავტოფარეხის გაღების სიგნალს ყავის მოსამზადებელი აპარატი შეიტყობს, თქვენ მანქანასთან გადაამოწმებს მართლა დაბრუნდით თუ არა და ყავის მომზადებას შეუდგება. თქვენ მიირთმევთ ყავას და ამასობაში აგარაკზე დამონტაჟებული გათბობის სისტემა გამოგიგზავნით შეტყობინებას. შეგეკითხებათ ხომ არ გადაიფიქრეთ აგარაკზე გამგზავრება და თქვენი მოსვლისათვის რა ტემპერატურამდე გაგითბოთ აგარაკი. ეს ყველაფერი ფანტასტიკური ფილმის კადრებს მოგვაგონებს მაგრამ თავად web-იც რომელიც უამრავი ადამიანის ცხოვრების განუყოფელი ნაწილი გახდა დღეს სულ რაღაც 25 წლისაა. ანუ 25 წლის წინ იმის წარმოდგენაც კი შეუძლებელი იყო რაც დღეს ჩვენთვის ყოველდღიურობის ნაწილია.  \r\n\r\nამ კურსის ფრგლებში სტუდენტები ისწავლიან ისეთი მოწყობილობების პროგრამულ მართვას როგორიცაა დრონები. arduino-სა და raspberry PI-ს საშალებით თავად შექმნიან და დააპროგრამირებენ „ჭკვიან“ მოწყობილობებს. რაც მთავარია ისწავლიან სხვადსხვა მოწყობილობის ერთიან ქსელში ჩართვას და ერთმანეთთან დაკავშირებას.\r\n', 'arduino.jpg'),
(5, 'პროგრამული პროექტების მართვა', 'ის ცოდნა რომელიც დიდი ხნის განმავლობაში გროვდებოდა და საბოლოოდ მენეჯმენტის სახელმძღვანელოებში მოიყარა თავი ხშირ შემთხვევაში გამოუსადეგარია პროგრამული პროექტების მართვისას. პროგრამული პროდუქტების შექმნა, დაპროექტება, მართვა განსხვავებული პრინციპებით ხდება. ამის ნათელი მაგალითია ICT სფეროს წამყვანი კომპანიები Google და Facebook-ი. Google და Facebook-ის შემქნელები არ არიან უნივერსიტეტის კურსდამთავრებულები, რომლებმაც უნივერსიტეტში მიღებულ ცოდნას პრაქტიკული გამოცდილება დაამატეს. შემდეგ კი ამაზე დაყრდნობით შექმნეს საკუთარი კომპანიები. ისინი უამრავ გამოცდილი და ნასწავლ პროფესიონალზე ბევრად უფრო ახალგაზრდები და გამოუცდელები იყვნენ როდესაც საკუთარი ბიზნესი წამოიწყეს. არც ერთ მათგანს საკუთარი პროექტზე მუშაობის დაწყებისას მაგისტრის დიპლომიც კი არ ქონდა. Google-ს შემქმნელებისათვის (სერგეი ბრინი და ლარი პეიჯი) Google სადიპლომო პროექტი იყო. მარკ ცუკერბერგმა Facebook-ი უნივერსიტეტში სწავლის პერიოდში შექმნა და საბოლოოდ აღარ დაასრულა უნივერსიტეტში სწავლა, საკუთარი პროექტის განვითარებაზე გადაერთო. ორივე კომპანიის დამფუძნებლებს მართალია გარკვეული ტექნიკური ცოდნა გააჩნიათ მაგრამ დღეს მათი ფუნქცია ძირითადად კომპანიის მართვასა და ახალი პროექტების შემუშავებაშია. \r\n\r\nამ კურსის ფარგლებში სტუდენტები მიიღებენ როგორც ტექნიკურ ცოდნას რომელიც საჭიროა პროგრამული პროდუქტების შექმნასა, შემუშავებასა და მართვისას ასევე შეისწავლიან იმ ახალ, განსხვავებულ პრონციპებს რომელთა გამოყენებითაც ხდება დღეს პროგრამული პროექტების მენეჯმენტი. კურსი პრაქტიკული ხასიათისაა. სხვა მიმართულების სტუდენტებთან ერთად მათ საშუალება ექნებათ საკუთარი პროექტები განახორციელონ. \r\n', 'projectclass.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
`id` int(5) NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `sponsor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `num` int(5) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `model`, `description`, `sponsor`, `num`, `image`) VALUES
(1, 'Nokia Lumia 1520', 'Built-in Memory : 32 GB\nRear Camera Resolution : 20 Megapixel\nBattery Talk Time : 1 Day\nScreen Resolution : 1920 x 1080\nProcessor Core : Quad-core (4 Core)', 'Microsoft', 2, 'lumia1520.jpg'),
(2, 'Nexus 7', 'Screen Resolution : 1280 x 800\nProcessor Core : Quad-core (4 Core)', 'GITA', 2, 'nexus7.jpg'),
(3, 'PC Desctop', '', 'GITA', 17, ''),
(4, 'DJI Phantom 2 Vision', 'Camera with 3-Axis Gimbal Stabilizer\nTakes 14MP Still and 1080p Video\nWi-Fi Downlink for Smartphones\niOS/Android App for Monitoring/Control', 'GITA', 1, 'phantom2vision.jpg'),
(5, 'Samsung Galaxy Tab S', '', 'GITA', 1, ''),
(6, 'Pro Pen Carrying Case', 'Included Spare Nibs\nIncluded Color Identification Rings\nCompatible with Intuos Pro Tablets', 'GeoLab', 1, 'GalaxyTabS.jpg'),
(7, 'Canon EF 75-300mm', 'The Canon EF 75-300mm f/4-5.6 III USM Lens is a relatively small, very light and very cheap lens for this focal length range.\nAnd the 75-300 III really is cheap. You usually get what you pay for - unfortunately this is the case with the 75-300 III.', 'GeoLab', 1, 'CANON75-300MM.jpg'),
(8, 'Canon EF-S 18-55mm', 'The Canon EF-S 18-55mm f/3.5-5.6 IS II Lens is the review-time-current version of Canon''s least expensive APS-C DSLR kit lens (replacing the EF-S 18-55mm IS Lens). While it is designed as a starter lens and leaves a lot to be desired, it is a good value when purchased in a kit. It is cheap, small and extremely light, has image stabilization and has a nice general purpose focal length range.', 'GeoLab', 1, 'CANON18-55MM.jpg'),
(9, 'Canon EOS M', 'New EF-M lens mount (optimized for APS-C sensor size)\n18MP APS-C ''Hybrid CMOS'' sensor\nContinuous autofocus in movie mode with subject tracking\n14-bit DIGIC5 processor\nISO 100-12800 standard, 25600 expanded\n4.3 fps continuous shooting, 3 fps with autofocus tracking\n1080p30 video recording, stereo sound (with 25p or 24p options)\nExternal microphone socket and adjustable sound recording level\n1040k dot 3:2 touch-sensitive ClearView II LCD (capacitative type, multi-touch support)\nStandard EOS hot-shoe for external flash (no built-in flash)\n''Creative Filters'' image-processing controls, previewed live on-screen', 'GeoLab', 3, 'CANONEOSM.jpg'),
(10, 'Kinect', 'With Kinect for Xbox One, command your Xbox and TV with your voice and gestures, play games where you are the controller and make Skype calls in HD. Plus, get a token to download the newest game in the award-winning Dance Central series, Dance Central Spotlight, included with your Kinect.', 'Leavingstone', 2, 'KINECT.jpg'),
(11, 'Wacom Cintiq', 'The Cintiq 27QHD creative pen and touch displays set a new standard in color, resolution and productivity. Create directly on a 27-inch high-definition edgeless glass screen for a truly intuitive and inspiring creative process. Tools might transform, but artistry remains.', 'GITA', 1, 'WACOMCINTIQ.jpg'),
(12, 'ASUS MeMO Pad 10', 'Powerful Quad-core (1.6GHz) Processor for Superior Performance\n10.1Œ 1280 x 800 HD IPS Display\nUp to 9.5 hours* of battery life for all-day computing\nDual speakers with ASUS SonicMaster technology for incredible sound \n*looping 720 video under test conditions\nThe ASUS MeMO Pad 10?s bundled OTG USB cable lets you hook up the tablet to any standard USB peripheral.*\n*Supports standard and FAT/NTFS format USB flash drives', 'GITA', 1, 'ASUSMEMOPAD10.jpg'),
(13, 'iPad', '', 'GITA', 1, 'ipad.jpg'),
(14, 'iPad Air', '', 'GITA', 1, 'ipad.jpg'),
(15, 'Samsung Gear 2', '', 'GITA', 1, 'GALAXYGear.jpg'),
(16, 'iPhone 4', 'Built-in Memory : 32 GB\nRear Camera Resolution : 5 Megapixel\nBattery Talk Time : 14 Hour\nScreen Resolution : 640 x 960', 'GITA', 1, 'IPhone4.jpg'),
(17, 'iPhone 5s', 'Built-in Memory : 64 GB\nRear Camera Resolution : 8 Megapixel\nBattery Talk Time : 10 Hour\nScreen Resolution : 1136 x 640\nProcessor Core : Dual-core (2 Core)', 'GITA', 1, 'IPhone5s.jpg'),
(18, 'Samsung Galaxy S4', 'Built-in Memory : 16 GB\nRear Camera Resolution : 13 Megapixel\nScreen Resolution : 1920 x 1080\nProcessor Core : Quad-core (4 Core)', 'GITA', 1, 'GALAXYS4.png'),
(19, 'Cintiq 13 HD Graphic Display', 'Gain all the innovations of our professional pen tablets, now with the ability to work directly on the screen of this compact Cintiq 13HD. Great color and resolution, professional ergonomics, and pressure-sensitive control are all together in an affordable design.', 'GITA', 1, ''),
(20, 'Wacom Intuos Pro medium', 'This pen tablet combines Wacom''s finest pen capabilities with intuitive multi-touch support. Gain precision and control, speed your workflow, and take advantage of all the pressure-sensitive capabilities in your favorite creative software, thanks to the innovations built into the Intuos Pro.', 'GITA', 1, 'Wacom.jpg'),
(21, 'Apple iMac 27 5K 2014', '27" Retina 5K IPS Display\n5120 x 2880 Native Resolution\n3.5 GHz Intel Core i5 (Haswell)\n8GB of 1600 MHz DDR3 RAM', 'GeoLab', 1, 'iMacLate2014.jpg'),
(22, 'Apple iMac 27 5K 2012', '3.4GHz Intel Core i7 Quad-Core\n16GB (2 x 8GB) of 1600Hz DDR3 RAM\n768GB Flash Storage\nnVIDIA GeForce GTX 680MX Graphics (2GB)', 'GITA', 2, 'iMac5k2012.jpg'),
(23, 'Apple iMac 27 5K 2013', '3.2GHz Intel Core i5 Quad-Core (Haswell)\n8GB of 1600Hz DDR3 RAM\n1TB 7200rpm Hard Drive\nNVIDIA GeForce GT 755M (1GB)', 'GeoLab', 2, 'iMacLate2013.jpg'),
(24, 'Apple‘13.3" MacBook Pro 2014', '2.8 GHz Intel Core i5 (Haswell)\n8GB of Onboard 1600 MHz DDR3L RAM\n512GB PCIe-Based Flash Storage\nIntegrated Intel Iris Graphics', 'GeoLab', 16, 'macbook_pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE IF NOT EXISTS `lecture` (
`id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `direction` text CHARACTER SET utf8 NOT NULL,
  `direction_id` int(11) NOT NULL,
  `bio` text CHARACTER SET utf8 NOT NULL,
  `pic_name` text CHARACTER SET utf8 NOT NULL,
  `social` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`id`, `name`, `direction`, `direction_id`, `bio`, `pic_name`, `social`) VALUES
(1, 'ანი ასათიანი', 'PHP პროგრამირება ', 1, 'ანი ასათიანი 2012-2014 წელებში სწავლობდა  გერმანიაში “HFG Offenbach” ვიზუალური კომუნიკაციის მიმართულებით. სწავლების პარალელურად მუშაობდა ვიზბადენში ვებ დეველოპერად კომპანია Lange von muenchhausen. მუშაობის განმავლობაში განახორციელა რამდენიმე პროექტი, მათ შორის ავტოკომპანია Skoda-სა  და smart-ისთვის. დამატებითი ინფორმაცია ამ პროექტების შესახებ შეგიძლიათ იხილოთ შემდეგ ბმულზე:<a href="http://www.110.ge/ani/lvm/lvm_screenschots.pdf" target="_blank">http://www.110.ge/ani/lvm/lvm_screenschots.pdf</a>\n2014 წელს გაიარა GDE-ის (Google Developer Expert) ანდროიდ ექსპერტების ჯგუფის ტრენინგი. აქვს რამოდენიმე წლიანი პედაგოგიური გამოცდილება. ილიაუნიში კითხულობდა ლექციებს ონლაინ კომუნიკაციის მიმართულებით. დაინტერესებულია სხვადასხვა მედიით, მათ შორის სტენსილებით და ტანსაცმლის დიზაინით.<a href="http://www.110.ge/01_interest.pdf" target="_blank">http://www.110.ge/01_interest.pdf</a>\n\n2014 წლიდან მუშაობს თბილისში ვებ დეველოპერად. თანამშრომლობს სხვადასხვა კომპანიებთან, მათ შორის თანამშრომლობს კომპანია connect-თან.\nასევე მუშაობს სხვადასხვა პროექტებზე freelancer-ის სახით.\n\n', 'ani-asatiani.jpg', 'facebook*=*https://www.facebook.com/hafarflocken'),
(2, 'გიორგი ვახტანგიშვილი', 'Android პროგრამირება', 2, 'გიორგი ვახტანგიშვილმა დაამთავრა თბილისის თავისუფალი უნივერსიტეტის „მათემატიკა და კომპიუტერული მეცნიერებების“ (MACS) ფაკულტეტი. გავლილი აქვს GDE-ის (Google Developer Expert) ანდროიდ ექსპერტების ჯგუფის ტრენინგი.\n\n2013 წლიდან დღემდე მუშაობს კომპანია „ალტა სოფთვეარიში“ ანდროიდ დეველოპერის პოზიციაზე. მას რამოდენიმე წლიანი მუშაობის გამოცდილება აქვს ICT სფეროში. მუშაობდა B2B პროექტებზე ისეთ კომპანიებთან როგორებიცაა ბანკი კონსტანტა და TBC ბანკი.\n\n2014 წლიდან დღემდე მუშაობს კომპანია „მობიუსიში“ მობილური აპლიკაციებისა და თამაშების დეველოპერის პოზიციაზე. \n\nასევე მუშაობს სხვადასხვა Freelance პროექტებზე.\n\n2011, 2012 წლებში მოიპოვა ACM-ის (NEERC) ნახევარფინალის მესამე ხარისხის დიპლომი. 2013 წელს Unihack-ის ჰაკათონზე მოიპოვა მესამე ადგილი (პროექტი CloudLibrary).\nაქვს პედაგოგიური გამოცდილებაც, ასწავლიდა თავისუფალ უნივერსიტეტში.', 'giorgi-vakhtangishvili.jpg', 'facebook*=*fb.com/sando:facebook*=*fb.com/geolab:linkin*=*link'),
(3, 'დავით გოჩავა', 'დიზაინი', 3, 'დავით გოჩავამ დაამთავრა (2010-2014) თბილისის თავისუფალი უნივერსიტეტის \n\n„ბიზნეს ადმინისტრირების“ (ESM) ფაკულტეტი. მეორადი სპეციალობა (MINOR) \n\n„მათემატიკა და კომპიუტერული მეცნიერებები“ (MACS).\n\n2014 წლიდან დღემდე მუშაობს დეველოპერულ კომპანია „მობიუსში“ Lead Game \n\nDeveloper-ის პოზიციაზე.\n\n2014 წლიდან სწავლობს ივანე ჯავახიშვილის სახელობის თბილისის \n\nსახელმწიფო უნივერსიტეტის ფილოსოფიის ფაკულტეტზე. (შეიძლება \n\nსხვანაირად ქვია, მაგრამ იყოს ასე)', 'davit-gochava.jpg', ''),
(4, 'თამარ კაპანაძე', 'IOS პროგრამირება', 4, '\nთამარ კაპანაძე ივანე ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტის დამამთავრებელი კურსის სტუდენტია. უყვარს პროგრამირება. ჩართულია არაერთ პროექტში. დაინტერესებულია სწავლებით და ექსპერიმენტებით თავის საქმიანობაში. მუშაობს ელ. წიგნების სახლში „საბა“ ( https://saba.com.ge/ ) და საქართველოს საზოგადოებრივ ინსტიტუტში (GIPA). თამარ კაპანაძეს რამოდენიმე წლიანი პედაგოგიური გამოცდილება გააჩნია.\n\n2014-ში საპრიზო ადგილი დაიკავა ჰაკატონზე,  როგორც ჯგუფი ურბანპედიას წევრმა.\n(http://challengepost.com/software/search?query=urbanpedia )\n\nგავლილი აქვს უკრაინული კომპანიის “SkillUp”-ის ტრენინგი iOS-ში.\n', 'tamar-kapanadze.jpg', ''),
(5, 'ირაკლი ღარიბაშვილი', '3D დიზაინი', 4, '2002 წლიდან მუშაობს კომპიუტერული გრაფიკის სფეროში, ძირითადად  კომერციულ და არქიტექტურულ ვიზუალიზაციის სფეროში.\r\nმონაწილეობას ღებულობს არქიტექტურულ კონკურსებში. მათ შორის: \r\n2004 “გარიყულა - ხელოვნების ცენტრი ” ვენეცია მე-9 არქიტექტურული ბიენალე „Metamorph“ \r\nhttp://iraklisan.deviantart.com/art/Garikula-quot-Center-for-the-Arts-quot-198779764\r\n2009 ტიფლისი - ძველი ქალაქის გამობრწყინება \r\nhttps://www.behance.net/gallery/20296317/Mirza-Shafi-Old-Tbilisi-Emanation-2008\r\n2013 წელს დააარსა კომპანია "ქუბიტზი" (QuBitz). რომელიც გრაფიკული ვიზუალიზაციის, ანიმაციის და ვიდეო თამაშების სფეროში საქმიანობს.\r\nკომპანია აქტიურად თანამშრომლობს როგორც ქართულ ასევე უცხოურ კომპანიებთან. მაგალითად: Unicard, GPI Holding, SIM, Windfor’s, ABK, BetterFly / DDB, StadyLogic, Streaming Tutors, Brand New Pixels და ა.შ.\r\n', 'irakli-garibashvili.jpg', ''),
(6, 'ლევან ასათიანი', 'გრაფიკული დიზაინი', 4, 'ლევან ასათიანი 2004 წლიდან მუშაობს ვიზუალური კომუნიკაციის მიმართულებით (ილუსტრაცია, გრაფიკული დიზაინი, ვებდიზაინი). განხორციელებული აქვს სხვადახვა პროექტები როგორც პრინტ დიზაინში (ჟურნალი ანაბეჭდი, ჟურნალი MODI TO GEORGIA, ესტონური ჟურნალი LOOK და ა. შ.) ასევე WEB დიზაინის მიმართულებითაც (Europe House, სტუდია Monitori, თსუ-ს ვებგვერდი). ლევან ასათიანმა 2010 მეგობრებთან ერთად დაარსა ონლაინ ჟურნალი WAS, იგი დღემდე ამ ჟურნალის არტ დირექტორია. ლევან ასათიანი ვიზუალური კომუნიკაციის მიმართულებით თანამშრომლობდა ისეთ კმპანიებთან როგორიცაა საქართველოს ბანკი, ჟურნალი ტაბულა, ჟურნალი ლიბერალი, კაზინო აჭარა, თელიანი ველი და სხვა.\r\n\r\n2011 წლიდან იგი კითხულობს ლექციებს საქართველოს სხვადახვა უნივერსიტეტებში (CSB, UG, GIPA).\r\n', 'levan-asatiani.jpg', ''),
(7, 'ლევან მელიქიშვილი', 'PHP პროგრამირება', 2, 'ლევან მელიქიშვილმა დაამთავრა ივ. ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტი. 2009 წლიდან მუშაობს კომპანია ლივინგსტონში, ვებ დეველოპერის პოზიციაზე.\r\n\r\nგანსაკუთრებით მოსწონს ვებ პროგრამირება და ყველაფერი რაც მასთანაა დაკავშირებული. თვლის რომ ვებს შეუძლია ჩვენი ცხოვრება უკეთესობისკენ შეცვალოს და რომ მისი სრულყოფის პროცესი არასდროს დამთავრდება. \r\n\r\nუყვარს ხარისხიანი ვებ პროდუქტების შექნა და მათთვის დიზაინერული ელემენტებსი შემუშავება. ახლო წარსულში უმუშავია საკმაოდ ბევრი ქართული კომპანიის ვებ პროდუქტებზე. მათ შორის შეიძლება გამოირჩეს wissol.ge და support.geocell.ge. ასევე მრავალი ტიპის ვებ და facebook აპლიკაციაზე.\r\n\r\nთავისუფალ დროის დიდ ნაწილს ატარებს TED.com და ლუდის ბოთლთან ერთად.\r\n', 'levan-melikishvili.jpg', ''),
(8, 'მარი მელიქიშვილი', 'IOS პროგრამირება', 2, 'მარი მელიქიშვილმა დაამთავრა ი.ვეკუას სახელობის 42-ე ფიზიკა-მათემატიკური სკოლა. ამჟამად ივანე ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტის დამამთავრებელი კურსის სტუდენტია. უყვარს პროგრამირება. ჩართულია არაერთ პროექტში. დაინტერესებულია სწავლებით და ექსპერიმენტებით თავის საქმიანობაში. ასწავლის პროგრამირების საფუძვლებსა  და მათემატიკას. \r\n\r\n2014-ში საპრიზო ადგილი დაიკავა ჰაკატონზე,  როგორც ჯგუფი ურბანპედიას წევრმა.\r\n\r\nგავლილი აქვს უკრაინული კომპანიის “SkillUp”-ის ტრენინგი iOS-ში.', 'mari-melikishvili.jpg', ''),
(9, 'მარინა ბალავაძე', 'გრაფიკული დიზაინი', 2, 'მარინა ბალავაძემ დაამთავრა თბილისის სახელმწიფო სამხატვრო აკადემიის კომპიუტერული გრაფიკის ფაკულტეტი. სწავლის დასრულების შემდეგ მუშაობდა Calamus Graphic Studio-ში, დიზიანერის პოზიციაზე. სადაც არა ერთი წიგნის, პლაკატის, ლოგოს, ბროშურისა და სხვა გრაფიკული ნამუშევრების დიზაინი აქვს შესრულებული. \r\n\r\nმას სხვადახვა ჟურნალებში არტდირექტორისა და დიზაინერის პოზიციაზე მუშაობის მრავალწლიანი გამოცდილება აქვს. 2005 წლიდან მუშაობს საქართველოში გამოცემულ საერთაშორისო ჟურნალებში: Cosmopolitan, Science&Vie Junior, National Geographic, ForbesLife, ForbesWoman.', 'marina-balavadze.jpg', ''),
(10, 'ნიკოლოზ ასტამიძე', 'პროგრამირება', 2, 'დაამთავრა აკად. ილია ვეკუას სახელობის ფიზიკა-მათემატიკის საჯარო სკოლა. მონაწილეობას იღებდა სამოქალაქო განათლებასთან დაკავშირებულ  სხვადასხვა ტრენინგებში. გააჩნია პედაგოგიური გამოცდილება, ჩატარებული აქვს სოციალური მედიის ტრენინგები. \r\nამჟამად სწავლობს საქართველოს საპატრიარქოს წმინდა ანდრია პირველწოდებულის სახელობის ქართულ უნივერსიტეტში - ინფორმატიკის, მათემატიკისა და საბუნებისმეტყველო მეცნიერებათა ფაკულტეტზე.\r\n2011 წელს მუშაობდა აკად. ილია ვეკუას სახელობის ფიზიკა-მათემატიკის საჯარო სკოლაში IT Manager - ის პოზიციაზე.\r\n2012 წელს მუშაობდა ელექტრონული წიგნების სახლ - „საბას“  დეველოპერების ჯგუფში. \r\nმუშაობდა განათლების სამინისტროს პროექტზე რომელიც ითვალისწინებდა ინტერაქციული წიგნების შექმნას დაწყებითი კლასების მოსწავლეთათვის.\r\n2014 წელს მუშაობდა Game Developer-ის პოზიციაზე Octappus studio-ში.\r\nამჟამად მუშაობს კომპანია Nextep -ში Game Developer-ის პოზიციაზე.\r\nასევე მუშაობს  აუდიტორიების სამართავ ელექტრონულ პლატფორმაზე საქართველოს საპატრიარქოს წმინდა ანდრია პირველწოდებულის სახელობის ქართული უნივერსიტეტისათვის. \r\nteqnologia.wordpress.com ბლოგის ადმინისტრატორი. ბლოგზე  განთავსებულია სტატიები თანამედროვე და მომავლის ტექნოლოგიებზე.\r\n', 'nikoloz-astamadze.jpg', ''),
(11, 'პავლე ტაბატაძე', 'პროგრამირება', 2, 'დაამთავრა აკად. ილია ვეკუას სახელობის ფიზიკა-მათემატიკის საჯარო სკოლა. მონაწილეობას იღებდა სამოქალაქო განათლებასთან დაკავშირებულ  სხვადასხვა ტრენინგებში. აგააჩნია პედაგოგიური გამოცდილება, ჩატარებული აქვს სოციალური მედიის ტრენინგები. \r\nამჟამად სწავლობს საქართველოს საპატრიარქოს წმინდა ანდრია პირველწოდებულის სახელობის ქართულ უნივერსიტეტში - ინფორმატიკის, მათემატიკისა და საბუნებისმეტყველო მეცნიერებათა ფაკულტეტზე.\r\n2012 წელს მუშაობდა ელექტრონული წიგნების სახლ „საბას“  დეველოპერების ჯგუფში. \r\nმუშაობდა Game Developer-ის პოზიციაზე Octappus studio-ში.\r\nამჟამად მუშაობს კომპანია Nextep -ში Game Developer-ის პოზიციაზე.\r\nმუშაობს  აუდიტორიების სამართავ ელექტრონულ პლატფორმაზე საქართველოს საპატრიარქოს წმინდა ანდრია პირველწოდებულის სახელობის ქართული უნივერსიტეტისათვის. ასევე მუშაობდა განათლების სამინისტროს პროექტზე რომლის ფარგლებშიც შეიქმნა ინტერაქციული წიგნები დაწყებითი კლასების მოსწავლეთათვის.\r\nაქვს ბლოგი სადაც განთავსებულია სტატიები თანამედროვე და მომავლის ტექნოლოგიებზე.', 'pavle-tabatadze.jpg', ''),
(12, 'სანდრო ასათიანი', 'სოციალური მედია', 2, 'სანდრო ასათიანი GeoLab-ის ერთ-ერთი თანადამფუძნებელია. \r\n2009 წლიდან კითხულობს ლექციებს საქართველოს სხვადასხვა უმაღლეს სახელმწიფო და კერძო სასწავლებლებში: ილიას სახელმწიფო უნივერსიტეტი (ILIAUNI),  საქართველოს საზოგადოებრივ საქმეთა ინსტიტუტი (GIPA), საქართველოს უნივერსიტეტი (GU), კავკასიისუნივერსიტეტი (CU).\r\n\r\n2013 წლიდან მუშაობს საქარათველოს საზოგადოებრივ საქმეთა ინსტიტუტში (GIPA). GIPA-ში მას ასისტენტ პროფესორის თანამდებობა უკავია.\r\n\r\nსანდრო ასათიანი წლების განმავლობაში მუშაობს ICT სფეროში მისი უშუალო მონაწილეობით განხორციელდა შემდეგი ონლაინ პროექტები: saba.com.ge, cybegala.me, kavshirebi.ge და სხვა.\r\n\r\nიგი ასევე წერს სტატიებს სხვადასხვა გამოცემებისათვის. სანდრო ასათიანი არის ავტორი პირველი ქართულენოვანი სოციალური მედიის სახელმძღვანელოსი და თანაავტორი წიგნებისა „ახალი მედია ჟურნალისტებისათვის“, „ვიდეო ადვოკატირება“.', 'sandro-asatiani.jpg', ''),
(13, 'შოთა იორამაშვილი', 'IOS პროგრამირება', 2, 'შოთა იორამაშვილი ივანე ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტის დამამთავრებელი კურსის სტუდენტია. დაინტერესებულია პროგრამირებით. ჩართულია მრავალ პროექტში. დაინტერესებულია სწავლებით და ექსპერიმენტებით თავის საქმიანობაში. თავისუფალ დროს ერთობა www.codefights.com -ზე. \r\n\r\nმუშაობს ელ. წიგნების სახლში „საბა“ და საქართველოს საზოგადოებრივ ინსტიტუტში (GIPA).  შოთა იორამაშვილს რამოდენიმე წლიანი პედაგოგიური გამოცდილება გააჩნია..\r\n\r\n2014-ში საპრიზო ადგილი დაიკავა ჰაკატონზე,  როგორც ჯგუფი ურბანპედიას წევრმა.\r\n\r\nგავლილი აქვს უკრაინული კომპანიის “SkillUp”-ის ტრენინგი iOS-ში.\r\n', 'shota-ioramashvili.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `merge`
--

CREATE TABLE IF NOT EXISTS `merge` (
`id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merge`
--

INSERT INTO `merge` (`id`, `project_id`, `lecture_id`) VALUES
(1, 1, 10),
(2, 2, 10),
(3, 0, 0),
(4, 0, 0),
(5, 3, 4),
(6, 4, 4),
(7, 5, 4),
(8, 5, 13),
(9, 6, 13),
(10, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `date`) VALUES
(1, 'სათაური1', ' <p>ადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალური                 </p>', 'ani-asatiani.jpg', '2015-10-27 00:00:00'),
(2, 'სათაური2', ' <p>ადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალური                 </p>', 'txt-1.jpg', '2015-10-15 00:00:00'),
(3, 'სათაური3', ' <p> ადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალური                 </p>', 'txt-1.jpg', '2015-10-15 00:00:00'),
(4, 'სათაური4', ' <p>ადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალური                 </p>', 'txt-1.jpg', '2015-10-08 00:00:00'),
(14, '112სათაური 6', '<p>12ადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალურიადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალურიადამიანი მუდამ ცდილობდა დაემკვიდრებინა ან შეექმნა ისეთი ენა, რომელზეც ყველა ისაუბრებდა, რომელიც ყველასთვის გასაგები იქნებოდა. ადამიანის ეს მცდელობები უშედეგოდ დასრულდა. დღეს ყოველგვარი ძალდატანების ან ხელოვნურად დამკვიდრების, მცდელობის გარეშე სრულიად ბუნებრივად იქმნება კიდევ ერთი ახალი ენა. ეს ვიზუალური</p>\r\n', '', '2015-10-27 20:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(5) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `image`, `controller`) VALUES
(1, 'რა არის GeoLab-ი', ' <p>\r\nGeoLAB-ი წარმოადგენს მობილური და ვებ აპლიაციების ლაბორატორიას. ეს არის სივრცე რომელიც 24 საათის განმავლობაში ღიაა სხვადსხვა საინტერესო და ინოვაციური პორექტების განხორციელებისათვის. GeoLAB-ის განუყოფელი ნაწილია სასწავლო ცენტრი, GAU App Academy. \r\n</p>\r\n<p>\r\nGAU App Academy-ში ნებისმიერ მსურველ შეუძლება ისწავლოს და სამი თვის განმავლობაში დაეუფლოს ცოდნას რომლიც მას მომავალში საშუალებას მისცემს თავად შექმნას პორგრამული პროდუქტის დიზაინი, თავად პროგრამული პროდუქტი ან დაპორექტის, მართოს პროგრამულ სფეროსთან დაკავშირებული პროექტები.\r\n</p>\r\n<p>\r\n\r\nსწავლების პარალელურად სტუდენტები შეძლებენ მიღებული ცოდნის პრაქტიკულ რეალიზაციას GeoLAB-ის სივრცეში, იმუშავებენ რა როგორც ლექტორების / მენტორების მიერ მიწოდებულ პროექტებზე, ასევე საკუთარი იდეების განხორციელებაზე.\r\n\r\n            </p>', 'garemo.jpg', 'environment'),
(2, 'რა პრინციპებით მუშაობს GeoLab-ი', '<p>\r\nდღესდღეობით მთელ მსოფლიოში ხდება ახალი, ოპტიმალური მოდელების შემუშავება სწავლებისა და მუშაობის პროცესის ეფექტურად წარმართვისათვის. ის მოდელი რომელიც ინდუსტრიულ ეპოქაში შეიქმნა ქარხნის მუშაობის პროცესს იმეორებს. სასწავლო დაწესებულებებში და სხვადახვა კომპანიების ოფისებში, ისევე როგორც ინდუსტრიული ეპოქის ქარხნებში ყველასთვის ერთნაირი, სტანდარტული გარემო არის შექმნილი. დრო მკაცრად არის რეგლამენტირებული. თანამშრომლები ისევე როგორც მოწაფეები,  მათი მონაწილეობის გარეშე შემუშავებული წესების ფარგლებში მოქმედებენ.\r\n            </p>\r\n            <p>\r\n                მსოფლიოს წამყვანი უნივერსიტეტები და ICT სფეროში მომუშავე კომპანიები ახალ მოდელებს ეძებენ, რომლებიც ერთი მხრივ ეფექტური მეორე მხრივ კი დღევანდელ რეალიებს იქნება მორგებული. ერთ-ერთი ასეთ მოდელი ინდუსტრიულ ეპოქამდე არსებულ, სახელოსნოს პრინციპზე აგებულ თანამშრომლობას მოგვაგონებს. მაგალითად შუა საუკუნეებში სწავლება და მუშაობა ერთმანეთისაგან არ იყო მკვეთრად გამიჯნული. სახელოსნოში ადამიანი ერთდროულად სწავლობდა და მუშაობდა. სწავლება მუშაობით ხდებოდა. დამწყები მარტივი, მაგრამ პრაქტიკული ამოცანის შესრულებიდან ნელნელა უფრო რთულზე გადადიოდა. ინდუსტრიული ეპოქისაგან განსხვავებით მკვეთრად არ იყო განსაზღვრული სამუშაო განრიგიც, სახელოსნოები პროექტებზე მუშაობდნენ. შესაბამისად მნიშვნელოვანი იყო პროექტის დროულად დასრულება და არა ყოველ დღე კონკრეტულ დროს სამუშაოს დაწყება, დამთავრება. არ არსებობდა ნიმუშები, მაგალითები, პროტოტიპები. შესაბამისად მუდამ გამოგონება, ახლის შექმნა ან არსებულის ახალ რეალიებზე მორგება იყო საჭირო. ამიტომ მნიშვნელოვანი იყო კრეატიულობა და არსებული პრობლემის გადაჭრის უნარი. ICT კომპანიებიც დღეს მუდამ ახალს ქმნიან. ხშირად ხდება აუცილებელი რაღაცის გამოგონება, არსებულ პროექტს, რეალიებს მორგება. შესაბამისად სწავლებისა და მუშაობისას მნიშვნელოვანია ისეთი გარემოს შექმნა სადაც ადამიანი კომფორტულად იგრძნობს თავს და თავისი პოტენციალის მაქსიმალურ რეალიზებას შეძლებს. სასწავლო ცენტრში და ლაბირატორიაში სწორედ ასეთი გარემო შეიქმნება. სადაც ადამიანი ერთი მხრივ შეიძენს საჭირო ცოდნას მეროე მხრივ კი საკუთარი პოტენციალის რეალიზებას შეძლებს. \r\n            </p>\r\n            <p>\r\n                თუ თქვენ გაინტერესებთ პროგრამირება, მობილური და ვებ ტექნოლოგიები, 3D გრაფიკა ან სხვადსხავ სახის მოწყობილობების დაპროგრამება. თუ თქვენ გსურთ არა მარტო თეორიული ცოდნის მიღება არამედ პრაქტიკული პროექტების განხორციელება მაშინ GeoLAB-ი ეს ის სივრცეა სადაც თქვენ გელოდებიან. სასწავლო ცენტრში მოწვეული გამოციდილი, პრაქტიკოსი პროფესორები დაგეხმარებიან იმ აუცილებელი ცოდნის მიღებაში, რომელიც საშუალებას მოგცემთ ჩაერთოთ ინოვაციური პროექტების განხორციელებაში.\r\n\r\n            </p>', 'filosofia.jpg', 'philosophy');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
`id` int(5) NOT NULL,
  `project_name` text CHARACTER SET utf8 NOT NULL,
  `project_description` text CHARACTER SET utf8 NOT NULL,
  `project_image` text CHARACTER SET utf8 NOT NULL,
  `project_url` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_name`, `project_description`, `project_image`, `project_url`) VALUES
(1, 'Spaxe-X', 'მულტიფლატფორმული თამაში კოსმიური შატლის პლანეტების ზედაპირზე დასასმელად', 'astamadze1.jpg', 'https://github.com/Nikoloz995/Space-X--Y-'),
(2, 'ინტერაქტიული წიგნი', 'ინტერაქტიული წიგნი, სახელმძღვანელო ბაშვებისათვის ნარჩენების გადამუშავებისა და ხელახალი გამოყენების შესახებ', 'astamadze2.jpg', 'https://github.com/sandroasatiani/CENN_InteractiveBook'),
(3, 'ვოლგასალონი', '', 'kapanadze2.jpg', 'http://volgasalon.ge/'),
(4, 'კავშირები', '', 'kapanadze3.jpg', 'http://kavshirebi.ge/'),
(5, 'cybergala', '', 'kapanadze1.jpg', 'https://cybergala.me/'),
(6, 'GeoLari', 'აპლიკაცია ვალუტის კუსის გასაგებად', 'geolari.png', 'https://itunes.apple.com/us/app/geolari/id1018841831?mt=8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merge`
--
ALTER TABLE `merge`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `direction`
--
ALTER TABLE `direction`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `merge`
--
ALTER TABLE `merge`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
