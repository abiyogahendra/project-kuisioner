/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - questionnaire
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`questionnaire` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `questionnaire`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `category` */

insert  into `category`(`id_category`,`id_page`,`name`) values 
(1,1,'Playability'),
(2,1,'Fun Factor'),
(3,1,'Game Story'),
(4,1,'Endurability'),
(5,1,'Fantasy'),
(6,1,'Play Factor'),
(7,1,'Flow'),
(8,1,'Player Variation'),
(9,1,'Challenge Factor'),
(10,2,'Pedagogy'),
(11,2,'Learning Style'),
(12,2,'Learner'),
(13,2,'Preference'),
(14,2,'Learning Content'),
(15,2,'Content Quality'),
(16,2,'System Adaptation'),
(17,3,'Mobility'),
(18,3,'Layout'),
(19,3,'Design'),
(20,3,'Control'),
(21,3,'Penilaian Umum');

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `page` */

insert  into `page`(`id_page`,`name`) values 
(1,'Playability'),
(2,'Pedagogy'),
(3,'Mobility');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;

/*Data for the table `question` */

insert  into `question`(`id_question`,`id_category`,`question`,`language`) values 
(1,1,'Apakah game ini menyajikan game-play (permainan) yang menarik dan atraktif?\r\n',0),
(2,1,'Apakah anda menikmati keseluruhan jalan cerita pada game pembelajaran ini?\r\n',0),
(3,1,'apakah anda menikmati keseluruhan tantanga yang disajikan dalam game pembelajaran ini?\r\n',0),
(4,1,'Apakah secara keseluruhan anda menyukai karakter atau tokoh yang muncul pada game pembelajaran ini?\r\n',0),
(5,1,'Apakah secara keseluruhan game ini menyajikan permainan yang mudah dan menarik?\r\n',0),
(6,2,'Apakah menurut anda game pembelajaran ini menyajikan jalan cerita yang berkesinambungan dari awal game sampai akhir anda memainkannya?\r\n',0),
(7,2,'Apakah anda merasa game ini menarik karena jalan ceritanya mampu menghadirkan pengalaman hidup anda sendiri?\r\n',0),
(8,2,'Apakah anda terus memikirkan kemungkinan akhir cerita yang berbeda, setelah anda memainkan game ini?\r\n',0),
(9,2,'Saat tidak memainkan game, apakah anda terus memikirkan jalan cerita dari game ini, waaupun tanpa hadirnya tokoh-tokoh pada game tersebut?\r\n',0),
(10,2,'Apakah anda terus memikirkan tokoh dan cerita dari game ini, setelah selesai memainkannya?\r\n',0),
(11,3,'Dapatkan anda mengendalkan tokoh game dengan skenario yang berbeda-beda untuk tetap memenangkan game ini?\r\n',0),
(12,3,'Dapatkah anda menyelesaikan game ini dengan strategi yang berbeda-beda?\r\n',0),
(13,3,'Apakah anda merasakan emosi seperti kemarahan, jengkel, terancam, lega, senang atau terpicu keingin tahuan nya selama berinteraksi dengan jalan cerita game ini?\r\n',0),
(14,3,'Apakah emosi anda terpengaruh oleh game ini, di luar permainan?\r\n',0),
(15,3,'Apakah menurutmu perkembangan tokoh dalam game ini adalah hal yang paling menarik?\r\n',0),
(16,4,'Apakah anda mengingat sebagian \"tantangan\" yang harus dihadapi selama memainkan game ini?\r\n',0),
(17,4,'apakah anda mengingat \" task/tugas\" yang harus diselesaikan selama memainkan game?\r\n',0),
(18,4,'Apakah anda mengingat bagaimana menyelesaikan tantangan yang berat saat memainkan game ini?\r\n',0),
(19,4,'apakah anda ingin memainkan game ini lagi dan lagi setelah pengalaman pertama?\r\n',0),
(20,4,'apakah anda ingin mengulang lagi dari awal untuk merasakan pengalaman bermain yang lebih baik?\r\n',0),
(21,5,'apakah anda merasa game yang anda mainkan, mengalihkan anda dari dunia di sekeliling anda?\r\n',0),
(22,5,'apakah anda dapat merasakan \"dunia lain\" saat memainkan game ini?\r\n',0),
(23,5,'Apakah anda termotiasi untuk mempelajari pengalaman baru dalam game ini?\r\n',0),
(24,5,'Apakah anda termotivasi untuk mempelajari pengetahuan baru dalam game ini?\r\n',0),
(25,5,'Apakah anda merasa game ini berhasil menyajikan \"dunia yang berbeda\" atau \" fantasy\"?\r\n',0),
(26,6,'Menurut anda apakah game ini cukup menantang?\r\n',0),
(27,6,'Apakah menurut anda tingkat kesulitan game ini sesuai dengan kemampuan bermain anda?\r\n',0),
(28,6,'Apakah menurut anda game ini mendorong peningkatan ketrampilan bermain?\r\n',0),
(29,6,'Apakah menurut anda game ini mendukung perkembangan keahlian bermain anda?\r\n',0),
(30,6,'Apakah berbagai strategi untuk memenangkan game , dapat dijalankan?\r\n',0),
(31,7,'Apakah game ini memberitahukan tujuan yang jelas pada waktu yang tepat saat memainkan game?\r\n',0),
(32,7,'Apakah anda mendapat umpan balik yang sesuai pada waktu yang tepat?\r\n',0),
(33,7,'Apakah anda mendapatkan arahan/petunjuk yang jelas pada waktu yang tepat?\r\n',0),
(34,7,'Apakah anda merasa ada tautan yang mendalam tanpa kerja keras saat memainkan game ini?\r\n',0),
(35,7,'Apakah anda terbawa ke dalam game ini secara alamiah saat emmainkan gaem ini?\r\n',0),
(36,8,'Apakah anda menjumpai beberapa gaya permainan ( misalnya arcade, fighting, simulasi, RPG dan lain-lain) saat memainkan game ini?\r\n',0),
(37,8,'Apakah gaya permainan yang diberikan game ini cocok dengan gaya permainan game anda?\r\n',0),
(38,8,'Apakah anda merasa kesulitan untuk menyesuaikan diri dengan gaya permainan yang disediakan oleh game ini?\r\n',0),
(39,8,'Apakah anda dapat memberikan feedback positif setelah memainkan game ini dalam waktu singkat?\r\n',0),
(40,8,'Apakah anda dapat memberikan feedback positif setelah memainkan game ini dalam waktu lama?\r\n',0),
(41,9,'apakah anda merasa naiknya kesulitan tantangan yang muncul pada game seiring dengan meningkatnya kemampuan bermain game anda?\r\n',0),
(42,9,'Apakah pada game yang anda mainkan ada pilihan tingkat kesulitan sehingga menyesuaikan kemampuan anda?\r\n',0),
(43,9,'Apakah tantangan-tantangan baru yang muncul pada game , muncul pada waktu dan jarak yang sesuai kemampuan anda?\r\n',0),
(44,9,'Apakah anda merasa mampu menyelesaikan keseluruhan tugas/tantangan yang ada dalam game ini?\r\n',0),
(45,9,'Apakah anda merasa ada tekanan secara fisik saat menyelesaikan game ini?\r\n',0),
(46,9,'Apakah anda merasa ada tantangan secara emosi saat menyelesaikan game ini?\r\n',0),
(47,10,'apakah anda nyaman belajar menggunakan media game-based learning ini?\r\n',0),
(48,10,'Apakah berdasar penguasaan ketrampilan penggunaan teknologi informasi anda, mudah untuk menggunakan game ini sebagai media belajar?\r\n',0),
(49,10,'Apakah anda merasa menggunakan games ini memberikan pengalaman belajar yang seperti pembelajaran \" real world\"?\r\n',0),
(50,10,'Apakah anda berpikir media pembelajaran ini dapat menggantikan guru/tutor?\r\n',0),
(51,10,'Apakah secara keseluruhan game ini mampu menyampaikan materi dengan baik?\r\n',0),
(52,11,'Menurut anda, apakah user dengan penguasaan penggunaan teknologi informasi yang rendah dapat memainkan game ini?\r\n',0),
(53,11,'Menurut anda, tanpa tutorial yang intens, anda dapat memainkan game ini dengan baik?\r\n',0),
(54,11,'Apakah game ini mampu menyampaikan materi pembelajaran tanpa harus didampingi guru/tutor?\r\n',0),
(55,11,'Apakah dengan mengandalkan petunjuk pada game yamg dimainkan, anda tidak kesulitan dalam memahami konten pembelajaran yang ada?\r\n',0),
(56,11,'Apakah dengan pengalaman memainkan game lain sebelumnya, anda dapat memainkan game dan memahami konten pembelajaran yang ada?\r\n',0),
(57,12,'Apakah game mencantumkan target usia untuk pemainnya?\r\n',0),
(58,12,'Apakah game mencantumkan tingkatan kelas sekolah untuk pemainnya?\r\n',0),
(59,12,'Apakah game ini tidak mempersyaratkan penguasaan Teknologi IT yang tinggi?\r\n',0),
(60,12,'Apakah game ini tidak mempersyaratkan pengalaman bermain game yang baik?\r\n',0),
(61,12,'Apakah dengan kemampuan anda saat ini, game ini mudah dimainkan?\r\n',0),
(62,13,'Apakah anda menyukai media pembelajaran dalam bentuk game ini?\r\n',0),
(63,13,'Apakah anda merasa nyaman dengan pemberian materi menggunakan media game ini?\r\n',0),
(64,13,'Apakah game ini menyediakan pilihan untuk mengatur tingkat kesulitan?\r\n',0),
(65,13,'Apakah game ini menyediakan lingkungan pembelajaran yang cocok dengan kebiasaan belajar anda?\r\n',0),
(66,13,'Apakah tingkat kesulitan bawaan ( default) dari game ini, cocok dengan kebiasaan belajar anda?\r\n',0),
(67,14,'Apakah game yang anda mainkan mengandung konten pembelajaran yang sesuai?\r\n',0),
(68,14,'Apakah anda dapat memahami konten pembelajaran yang dikemas dalam game-based learning ini?\r\n',0),
(69,14,'Apakah konten pembelajaran dapat anda temukan dengan mudah pada game-based learning ini?\r\n',0),
(70,14,'Apakah konten pembelajaran yang ada dalam game ini dapat digunakan untuk mendukung pembelajaran materi yang diinginkan?\r\n',0),
(71,14,'apakah konten pembelajaran yang ada pada game ini sering muncul selama memainkan game?\r\n',0),
(72,15,'Apakah menurut anda mudah untuk mempelajari konten pembelajaran dalam game ini?\r\n',0),
(73,15,'Apakah game ini mampu menyediakan konten pembelajaran yang mudah untuk dipelajari?\r\n',0),
(74,15,'Apakah anda mampu mencapai tujuan pembelajaran dengan memainkn game ini?\r\n',0),
(75,15,'Saat memainkan game ini dalam waktu singkat, apakah game ini mampu menyampaikan konten pembelajaran yang mudah dipahami?\r\n',0),
(76,15,'secara keseluruhan, apakah game ini menyediakan konten pembelajaran yang berkualitas baik?\r\n',0),
(77,16,'Apakah game ini memberikan fasilitas kustomisasi untuk menyesuaikan perilaku game sesuai dengan gaya belajar ( learnig style) anda?\r\n',0),
(78,16,'Apakah game ini mampu mendeteksi gaya belajar anda dan secara otomatis mengubah setting game ke gaya belajar yang sesuai dengan gaya belajar anda?\r\n',0),
(79,16,'Apakah game yang anda mainkan menyediakan pilihan untuk mengganti genre game sesuai dengan genre game kesukaan anda?\r\n',0),
(80,16,'Apakah ada beberapa game genre yang muncul pada game ini?\r\n',0),
(81,16,'Apakah di level-level yang berbeda ( jika ada), menyajikan beberapa genre game yang berbeda?\r\n',0),
(82,16,'apakah game pembelajaran ini berjalan dengan mulus pada handphone yang anda gunakan?\r\n',0),
(83,17,'Apaka game pembelajaran ini hanya membutuhkan memori penyimpanan yang kecil pada handphone yang anda gunakan?\r\n',0),
(84,17,'Apaka game pembelajaran ini hanya membutuhkan memori penyimpanan yang kecil pada handphone yang anda gunakan?\r\n',0),
(85,17,'Apakah game ini cocok dimainkan pada handphone anda?\r\n',0),
(86,17,'Apakah game ini nyaman dimainkan pada ukuran layar di handphone anda?\r\n',0),
(87,17,'Apakah spesifikasi handphone anda mampu menjalankan game pembelajaran ini dengan baik?\r\n',0),
(88,18,'Apakah konten aplikasi terletak di pusat dari layar?\r\n',0),
(89,18,'Apakah aplikasi ini mngelompokkan elemen elemen dengan fungsi hampir sama dalam 1 grup?\r\n',0),
(90,18,'Apakah scrolling secara vertikal dominan digunakan saat menggunakan aplikasi ini?\r\n',0),
(91,18,'Apakah fasilitas pencarian dapat dengan mudah ditemukan pada aplikasi ini?\r\n',0),
(92,18,'Apakah pada setiap tampilan dialog, tidak lebih dari 3 tombol ( button) yang muncul?\r\n',0),
(93,19,'Apakah game pembelajaran ini menyajikan desain yang konsinten, seragam dan jelas?\r\n',0),
(94,19,'Apakah game pembelajaran ini memberikan highlight ( penekanan) untuk informasi penting pada tampilan untuk pengguna?\r\n',0),
(95,19,'Apakah ukuran tombol yang digunakan antara 7mm sampai dengan 10 mm?\r\n',0),
(96,19,'Apakah game ini menggunakan warna yang cocok pada tampilannya?\r\n',0),
(97,19,'Apakah game pembelajaran ini menggunakan grafis yang bagus dan bervariasi untuk menarik pengguna?\r\n',0),
(98,19,'Apakah game pembelajaran ini mengginakan gambar dan warna untuk menyampaikn informasi yang lebih jelas?\r\n',0),
(99,19,'Apakah game pembelajaran ini menggunakan bentuk huruf yang baik?\r\n',0),
(100,20,'Apakah game pembelajaran ini menyediakan fitur utama yang mudah ditemukan untuk memainkan game?\r\n',0),
(101,20,'Apakah kontrol untuk memainkan dapat dipelajari secara intutive ( di kira-kira dan dicoba-coba)?\r\n',0),
(102,20,'Apakah game pembelajaran ini menyediakan kontrol/kendali yang mudah ditemukan untuk memainkan game?\r\n',0),
(103,20,'Apakah game pembelajaran ini menggunakan kontrol yang seukuran dengan ujung jari?\r\n',0),
(104,20,'Apakah game pembelajaran ini menggunakan kontrol yang mudah digunakan?\r\n',0),
(105,21,'Apakah dengan memainkan game ini anda memperoleh pemahanan yang jelas terhadap materi pembelajaran yang disajikan?\r\n',0),
(106,21,'Apakah dengan memainkan game ini anda memperoleh pemahanan yang lengkap terhadap materi pembelajaran yang disajikan?\r\n',0),
(107,21,'Apakah anda menikmati belajar dengan menggunakan media game pembelajaran ini?\r\n',0),
(108,21,'Apakah dalam waktu memainkan yang singkat, anda mampu mempelajari sesuatu yang baru dari materi yang disajikan?\r\n',0),
(109,21,'Secara keseluruhan, apakah game pembelajaran ini berhasil menjalankan fungsinya menjadi game yang menarik sekaligus menyampaikan materi pembelajaran?\r\n',0);

/*Table structure for table `respondent` */

DROP TABLE IF EXISTS `respondent`;

CREATE TABLE `respondent` (
  `id_respondent` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `jenkel` varchar(20) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `pengalaman` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_respondent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `respondent` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
