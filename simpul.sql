-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 08:13 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpul`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 5);

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE IF NOT EXISTS `calon` (
  `id` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nim2` int(11) NOT NULL,
  `capres` varchar(255) NOT NULL,
  `cawapres` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `jargon` text NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon`
--

INSERT INTO `calon` (`id`, `no_urut`, `nim`, `nim2`, `capres`, `cawapres`, `foto`, `visi`, `misi`, `jargon`, `vote`) VALUES
(1, 1, 17101080, 14101016, 'Kinat', 'Tria', 'text.jpg', 'Sepakbola yang TERBAIK :D', '1. Mencerdaskan kehidupan Bangsa\r\n2. Ikut melaksanakan ketertiban Dunia\r\n3. Melindungi segenap Bangsa Indonesia\r\n4. Keadilan Bagi Mahasiswa IT Telkom Purwokerto', 'kita ganteng lho', 0),
(2, 2, 14145514, 15121214, 'Kodo', 'Juju', 'kaka.jpg', 'kami akan menguasai dunia', '1. Mencerdaskan kehidupan Bangsa\r\n2. Ikut melaksanakan ketertiban Dunia\r\n3. Melindungi segenap Bangsa Indonesia', 'kami siapa sih ya', 0),
(3, 3, 15611212, 10161621, 'Hayu', 'Yayu', 'kkk.jpg', 'kami suka jamban', '1. Mencerdaskan kehidupan Bangsa\r\n2. Ikut melaksanakan ketertiban Dunia\r\n3. Melindungi segenap Bangsa Indonesia\r\n4. Keadilan Bagi Mahasiswa IT Telkom\r\n', 'lord lodr lord', 0),
(4, 4, 17101066, 17810002, 'Aku', 'Kamu', 'iii.jpg', 'menjadikan mahasiswa keren', '1. Mencerdaskan kehidupan Bangsa\r\n2. Ikut melaksanakan ketertiban Dunia\r\n3. Melindungi segenap Bangsa Indonesia\r\n4. Keadilan Bagi Mahasiswa IT Telkom Purwokerto', 'wayo lho', 0),
(5, 5, 17100155, 16101045, 'Popoh', 'Ameri', 'lol.jpg', 'Pintar adalah kebutuhan wajib', '1. Mencerdaskan kehidupan Bangsa\r\n2. Ikut melaksanakan ketertiban Dunia\r\n3. Melindungi segenap Bangsa Indonesia\r\n4. Keadilan Bagi Mahasiswa IT Telkom Purwokerto', 'Apa Lu ?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pemilih`
--

CREATE TABLE IF NOT EXISTS `pemilih` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilih`
--

INSERT INTO `pemilih` (`id`, `nim`, `nama`, `token`, `kelas`, `jurusan`, `status`) VALUES
(1, 17101079, 'Synatria Subekti', 'abcd123', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 1),
(2, 16101024, 'kinattria', 'avxe32', 'S1TT-02-A', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(3, 14100154, 'harry tanoe', 'abcde', 'D3TT-01-B', 'D3 TEKNIK TELEKOMUNIKASI', 0),
(4, 12222222, 'Suyati, M.Pd', 'abcd1234', 'Guru', 'Guru', 1),
(6, 17101089, 'Yahya', 's6c12z', 'S1RPL-02-A', 'S1 RPL', 0),
(7, 17101070, 'Jujur', 'wot5xj', 'S1RPL-02-B', 'S1 RPL', 0),
(8, 17181811, 'Wakwaw', '7jztvu', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(9, 1221122, 'Lola', 'r5lcfd', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(10, 17101054, 'Roy Gramboy', 'abcde', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(11, 17101053, 'Kura kura', 'abcde', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(12, 17101052, 'Brajil dah', 'abcde', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(13, 17101051, 'Sintia Charlie', 'abcde', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(14, 17101050, 'Ronald Konci', 'abcde', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(15, 17101049, 'Resty Adinda', 'abcde', 'S1TT-05-B', 'S1 TEKNIK TELEKOMUNIKASI', 0),
(16, 1724849, 'Fadil', 'abcde344', 'S1-IF-05-C', 'S1 IF', 0),
(17, 17101078, 'Naufal', 'qhjosz', 'S1-IF-05-A', 'S1 IF', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE IF NOT EXISTS `pilihan` (
  `id` int(11) NOT NULL,
  `nim` int(25) NOT NULL,
  `id_pilihan` int(11) NOT NULL,
  `validasi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pemilih`
--
ALTER TABLE `pemilih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
