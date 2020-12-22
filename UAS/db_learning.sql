-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2020 pada 11.13
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_learning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `resi` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order` varchar(50) NOT NULL,
  `delivery` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checkout`
--

INSERT INTO `checkout` (`resi`, `name`, `order`, `delivery`, `payment`, `telp`, `address`) VALUES
('123ABC', 'Agus Chandra', '1', 'JNE', 'BCA', '0821345678', 'Jalan Rindu No.23 Jimbaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ebook`
--

CREATE TABLE `ebook` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `penulis_buku` varchar(50) NOT NULL,
  `penerbit_buku` varchar(50) NOT NULL,
  `tahun_terbit` varchar(20) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ebook`
--

INSERT INTO `ebook` (`id_buku`, `judul_buku`, `penulis_buku`, `penerbit_buku`, `tahun_terbit`, `cover`, `harga`, `deskripsi`) VALUES
(1, 'Markesot Bertutur tentang Hakikat Hidup', 'Emha Ainun Nadjib', 'Mizan Publishing', '2017', 'http://127.0.0.1/go-class/public/assets/images/e-book/e-book2.jpeg', '10.000', 'Markesot adalah sosok lugu nan cerdas, mbeling, terkadang misterius. Dalam kesehariannya dengan sahabat-sahabatnya, Markembloh, Markasan, Markemon, dan lain-lain yang tergabung dalam Konsorsium Para Mbambung (KPMb), Markesot memperbincangkan seabrek problem masyarakat kita. Dari konflik politik internasional sampai soal celana. Dari tasawuf hingga filosofi urap. Dalam gaya bertutur khas Jawa Timuran yang penuh canda dan sindiran, Markesot mengajak kita meneropong kehidupan secara arif dan menemukan hakikat di balik nilai-nilai semu yang merajalela.'),
(2, 'All About Termux', 'Rafli Arvianto', 'Rafli Arvianto', '2019', 'http://127.0.0.1/go-class/public/assets/images/e-book/e-book1.jpeg', '15.000', 'Jutaan orang tak menyadari bahwa ada salah satu aplikasi Android\r\nyang dapat mengubah dunia. Aplikasi bernama Termux,\r\n\r\nmanfaatnya ibarat pohon kelapa. Mengapa demikian?\r\n\r\nAnda akan mengetahuinya setelah membaca ebook ini.'),
(3, 'Jangan Membuat Masalah Kecil Jadi Masalah Besar', 'Richard Carlson', 'Gramedia Pustaka Utama', '2019', 'http://127.0.0.1/go-class/public/assets/images/e-book/e-book3.jpeg', '7000', 'Banyak hal dalam hidup ini yang sebenarnya hanya masalah kecil, tapi kita memperlakukannya sebagai masalah besar. Sebenarnya, dengan membentuk perspektif baru bahwa masalah-masalah itu memang kecil, kita akan mempunyai lebih banyak waktu untuk memikirkan hal-hal yang benar-benar merupakan masalah besar. Dengan gaya tulisan yang mudah dipahami, buku ini menyajikan cara-cara membentuk perspektif yang lebih positif tersebut sehingga kita akan belajar untuk berdamai dengan diri sendiri dan lebih peduli. Hidup kita akan lebih terfokus pada masa kini, hubungan kita dengan orang lain akan menjadi lebih baik, dan batin kita akan menjadi lebih tenang.\r\n'),
(4, 'Easy & Simple - Web Programming', 'Rohi Abdulloh', 'Elex Media Komputindo', '2016', 'http://127.0.0.1/go-class/public/assets/images/e-book/e-book4.jpeg', '30.000', 'Kata siapa pemrograman website itu sulit? Buku ini akan memberikan panduan mempelajari pemrograman website dengan cara yang mudah. Setiap bahasa pemrograman yang harus dikuasai dibahas menjadi satu dalam sebuah proyek membuat website responsive. Buku ini ditulis dengan memperhatikan penulisan skrip yang rapi, pengelompokan file-file sesuai fungsinya, penamaan variabel, nama folder, nama file, dan nama tabel pada database yang konsisten agar mudah dipahami oleh pembaca yang baru belajar pemrograman website sekalipun. Dibahas pula pembuatan template dengan bootstrap sehingga tampilan website selalu menyesuaikan layar ketika dibuka di tablet dan smartphone. Buku ini merupakan revisi dari buku sebelumnya yang berjudul Web Programming is Easy, dengan penambahan dua bab yang menarik, yaitu Memperbaiki Error Program dan Menggunakan Widget dari Internet. Sehingga buku ini akan menjadi panduan yang menarik untuk belajar pemrograman website. '),
(5, 'Otodidak Desain dan Pemrograman Website', 'Jubilee Enterprise', 'Elex Media Komputindo', '2017', 'http://127.0.0.1/go-class/public/assets/images/e-book/e-book5.jpeg', '12.000', 'Buku ini membahas secara praktis pemrograman dan desain website yang memadukan Dreamweaver, HTML, CSS, PHP, dan Dreamweaver bagi pemula. Pembahasan di dalam buku ini meliputi: - Memadukan Dreamweaver dan XAMPP untuk menguji pemrograman berbasis server side, seperti PHP. - Mengombinasikan PHP dan Form agar dapat menghasilkan situs yang interaktif. - Pemahaman terhadap HTML dan CSS serta bagaimana memanfaatkan Dreamweaver untuk penulisan kode pemrograman. - Penggunaan Dreamweaver untuk membuat desain website serta merancang project pembuatan situs dari awal. Diharapkan, setelah membaca buku ini para pembaca dapat mencoba sendiri langkah demi langkah membuat website baik dengan cara mendesain maupun melakukan pemrograman.\r\n'),
(6, 'Aplikasi Internet Menggunakan HTML, CSS, dan JavaScript', 'Koesheryatin,Taryana Suryana', 'Elex Media Komputindo', '2014', 'http://127.0.0.1/go-class/public/assets/images/e-book/e-book6.jpeg', '25.500', 'Selamat datang di internet. Mungkin Anda selama ini telah mendengar tentang adanya internet, namun belum jelas seperti apakah internet itu, manfaat apa yang diperoleh, dan kemudahan apa saja yang disediakan oleh internet bagi Anda. Buku ini akan menuntun Anda dalam membuat aplikasi internet secara lengkap. Sistematika pembahasan dalam buku lebih ditekankan pada segi praktikum. Oleh karena itu, cara terbaik untuk memahami dan menguasai pokok bahasan yang ada dalam buku adalah dengan mempraktikkannya langsung pada komputer. Pembahasan materi ditujukan untuk para mahasiswa dan kalangan lainnya yang berminat dalam pengembangan informasi berbasis WWW (World Wide Web). ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` int(20) NOT NULL,
  `picture_guru` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `birth_date_guru` varchar(20) NOT NULL,
  `birth_place_guru` varchar(100) NOT NULL,
  `religion_guru` enum('Hindu','Islam','Buddha','Katolik','Protestan','Konghucu') NOT NULL,
  `gender_guru` enum('Laki-laki','Perempuan','Other') NOT NULL,
  `address_guru` varchar(100) NOT NULL,
  `telp_guru` varchar(13) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `email_guru` varchar(50) NOT NULL,
  `password_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `picture_guru`, `nama_guru`, `birth_date_guru`, `birth_place_guru`, `religion_guru`, `gender_guru`, `address_guru`, `telp_guru`, `mapel`, `jadwal`, `email_guru`, `password_guru`) VALUES
(12345678, 'Laki-laki', 'Sada', '1212-12-12', 'sdfgh', 'Hindu', 'Laki-laki', 'Jimbaran', '12345678', 'Pemrograman Berbasis Web', '1', 'sada@gmail.com', '$2y$10$NXK0Z4RuWreA400Teb4EjurWvhRg8oK9TXazkdowdrqhEnB2E1.8a'),
(123456789, 'Perempuan', 'agus chandra', '1212-12-12', 'qwertyui', 'Katolik', 'Perempuan', 'Jimbaran', '1234567890', 'Pemrograman Berbasis Web', '1', 'agus@gmai.com', '$2y$10$BdBRaV5edrvVnrpZLWeem.4uyG9knO.9RTtHzVRzczODabHaY6eTO'),
(546523423, 'Perempuan', 'Derwi', '1212-12-12', 'NTT', 'Katolik', 'Perempuan', 'Jimbaran', '234567', 'Pemrograman Berbasis Web', '1', 'derwi@gmail.com', '$2y$10$VRUCpA1njVNgNeaJZNCrN.K8/tTgmZVtN09/58nlQPnmH9gHblYKq'),
(1072563865, 'Laki-laki', 'I Komang Ari Mogi, S.Kom., M.Kom', '2020-12-17', 'Denpasar', 'Buddha', 'Laki-laki', 'Jimbaran, Bali', '082983156767', 'Pemodelan dan Simulasi', '7', 'mogi@gmail.com', '$2y$10$ibTmexNJ08sMsLaliDGa1uu//Ved0vP.2syPsykIFAeF3MLpP3P12'),
(1072573265, 'Laki-laki', 'Drs. Wayan Santiyasa, M.Si', '1960-08-19', 'Gianyar', 'Hindu', 'Laki-laki', 'Gianyar, Bali', '0878687323214', 'Pemrograman Berbasis Web', '6', 'santi@gmail.com', '$2y$10$t9vdZ3u1aEZJu7rGEfU2Z.zVquiwab9J4qO82cr1IK9ys1MGcqIp6'),
(1074572453, 'Laki-laki', 'Cokorda Rai Adi Pramartha, ST.MM.Ph.D', '1992-09-12', 'Denpasar', 'Hindu', 'Laki-laki', 'Bangli, Bali', '085434214637', 'Sistem Informasi', '1', 'cokorda@gmail.com', '$2y$10$CHtXkpnilLA7LFuxDzDHV.Q.qJl6swDc68Wx7tZieLwDApB7cgVGa'),
(1078256378, 'Laki-laki', 'I Gede Arta Wibawa, ST., M.Cs', '1995-02-20', 'Seminyak', 'Hindu', 'Laki-laki', 'Badung, Bali', '082145656767', 'Grafika Komputer', '2', 'arta@gmail.com', '$2y$10$QDUS0gceqdBijx7WxO3JaOEMj7LaSaNdfadkt0WNB.mAsQmMMUJ4G'),
(1087964536, 'Laki-laki', 'Dr. Ngurah Agus Sanjaya ER, S.Kom., M.Kom', '1980-08-19', 'Negara', 'Katolik', 'Laki-laki', 'Tabanan, Bali', '087868378653', 'Metode Penelitian', '5', 'gusan@gmail.com', '$2y$10$/V/WDB17/zKLjQqk/Q5Ao.2dqWLq/TO7ac.5gDzIW1gtmfwjIx1/C'),
(1089643025, 'Perempuan', 'Dr. AA Istri Ngurah Eka Karyawati, S.Si., M.Eng', '1987-08-12', 'Denpasar', 'Buddha', 'Perempuan', 'Denpasar, Bali', '08515234567', 'Teori Bahasa Dan Otomata', '3', 'eka@gmail.com', '$2y$10$qFNJBwozY7JfpQxRTo9RKu015XizO.RUKh0EzU8fTxQEhYcV016bC'),
(1089643527, 'Laki-laki', 'I Gusti Anom Cahyadi Putra, ST., M.Cs', '1980-08-17', 'Negara', 'Hindu', 'Laki-laki', 'Klungkung, Bali', '087868343214', 'Kewirausahaan', '4', 'anom@gmail.com', '$2y$10$ehtLt6IobxKjzVupLagHcuOn8l7KCeZ.o0J/aR9K5koF5m6O7U5a.'),
(2147483647, 'Perempuan', 'agus chandra', '1899-03-23', 'Konoha', 'Konghucu', 'Other', 'Jimbaran', '1234567', 'Kewirausahaan', '4', 'dekgus@gmail.com', '$2y$10$DJC6dmWjT/znDwCWSXoZA.lZf9167ogMAWD3SA3BHFihSuHJmuWpa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `mapel`, `kelas`, `hari`, `jam`) VALUES
(1, 'MP102', 'AA181', 'Senin', '08:00-10:30'),
(2, 'MP103', 'AA181', 'Senin', '10:30-13:00'),
(3, 'MP106', 'AA181', 'Senin', '13:30-16:00'),
(4, 'MP104', 'AA181', 'Selasa', '08:00-09:40'),
(5, 'MP107', 'AA181', 'Selasa', '13:30-15:10'),
(6, 'MP101', 'AA181', 'Rabu', '08:00-09:40'),
(7, 'MP105', 'AA181', 'Kamis', '08:00-10:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `wali_kelas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `wali_kelas`) VALUES
('AA181', 1072573265),
('BB181', 1078256378),
('CC181', 1078256378),
('DD181', 1087964536);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `guru_pengajar` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `guru_pengajar`) VALUES
('MP101', 'Pemrograman Berbasis Web', 1072573265),
('MP102', 'Sistem Informasi', 1074572453),
('MP103', 'Grafika Komputer', 1078256378),
('MP104', 'Kewirausahaan', 1089643527),
('MP105', 'Pemodelan dan Simulasi', 1072573265),
('MP106', 'Teori Bahasa Dan Otomata', 1089643025),
('MP107', 'Metode Penelitian', 1087964536);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `descriptions` varchar(250) NOT NULL,
  `mapel` enum('Pemrograman Berbasis Web','Sistem Informasi','Grafika Komputer','Kewirausahaan','Pemodelan dan Simulasi','Teori Bahasa dan Otomata','Metode Penelitian') NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `title`, `descriptions`, `mapel`, `date`) VALUES
(2, 'Akademik', 'Dalam rangka meningkatkan sistem pembelajaran berbasis online, diluncurkan aplikasi berbasis web yang bernama Good Choice.', '', '2020-12-12'),
(5, 'Website Daring', 'Membuat website daring untuk membantu para siswa di masa pandemi. Konsep rancangan web dibebaskan tetapi tetap sesuai ketentuan penugasan. Selamat Mengerjakan', 'Pemrograman Berbasis Web', '2020-12-21'),
(6, 'Laporan Tugas Pemrograman Website ', 'Siswa diharapkan segera mengumpulkan laporan website, Laporan sesuai dengan yang sudah dikesepakati, jika ada yang mengumpulkan lebih dari batas waktu akan dikenakan pengurangan nilai. Terima kasih', 'Metode Penelitian', '2020-12-19'),
(8, 'Deadline Tugas TBO', 'Cepet Kumpul!', 'Teori Bahasa dan Otomata', '2020-12-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `mapel` enum('Pemrograman Berbasis Web','Sistem Informasi','Grafika Komputer','Kewirausahaan','Pemodelan dan Simulasi','Teori Bahasa dan Otomata','Metode Penelitian') NOT NULL,
  `nama_tugas` varchar(100) NOT NULL,
  `desk_tugas` varchar(1000) NOT NULL,
  `deadline` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `mapel`, `nama_tugas`, `desk_tugas`, `deadline`) VALUES
(1, 'Kewirausahaan', 'Makalah', 'Membuat makalah tentang perkambangan ekonomi dan UMKM di Indonesia', '2020-12-24'),
(2, 'Pemrograman Berbasis Web', 'Web Daring', 'Membuat web daring untuk siswa dalam memudahkan pembelajaran', '2020-12-17'),
(3, 'Metode Penelitian', 'Proposal', 'Membuat proposal TA', '2020-12-30'),
(4, 'Teori Bahasa dan Otomata', 'Teori Bahasa dan Otomata', 'Membuat sistem berbasis web tentang searching NFA dan validasi kalimat CFG', '2020-12-21'),
(5, 'Teori Bahasa dan Otomata', 'Projek 2 TBO', 'Membuat web validasi kalimat cfg', '2020-12-30'),
(6, 'Sistem Informasi', 'UAS', 'UAS dilakukan pada waktu perkuliahan, soal merupakan pilihan ganda dan esai jawaban singkat. Tolong buat jawaban pada file .pdf dan kumpulkan pada email Bapak guscan@gmail.com. Untuk keterlambatan berarti tidak ada nilai. ', '2021-01-01'),
(15, 'Sistem Informasi', 'Game 3D Bebas', 'Membuat web game 3D dengan Visual Studio Code. Terima kasih', '2020-12-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploaded`
--

CREATE TABLE `uploaded` (
  `id_uploaded` int(11) NOT NULL,
  `mapel` enum('Pemrograman Berbasis Web','Sistem Informasi','Grafika Komputer','Kewirausahaan','Pemodelan dan Simulasi','Teori Bahasa dan Otomata','Metode Penelitian') NOT NULL,
  `respon` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uploaded`
--

INSERT INTO `uploaded` (`id_uploaded`, `mapel`, `respon`) VALUES
(15, 'Sistem Informasi', '15 sistem informasi respon 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nomor_induk` varchar(11) NOT NULL,
  `picture` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `religion` enum('Hindu','Islam','Katolik','Buddha','Protestan','Konghucu') NOT NULL,
  `birth_place` varchar(50) NOT NULL,
  `gender` enum('Laki-laki','Perempuan','Other') NOT NULL,
  `address` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nomor_induk`, `picture`, `email`, `password`, `name`, `birth_date`, `religion`, `birth_place`, `gender`, `address`, `telp`, `kelas`) VALUES
('098', 'Laki-laki', 'mati@gmail.com', '$2y$10$6EqkMGVXILwME4GIhTUcSOAnjhkoI113zdgQlByceRQquRgEu3xcG', 'Neji Hyuga', '2000-12-12', 'Buddha', 'Konoha', 'Laki-laki', 'Konoha', '09876543', 'AA181'),
('1023', 'Perempuan', 'derwi@gmail.com', '$2y$10$OkebSrB8zXK58TgM.9m1WOr8T6DYakPgQ/CdXBfvTvFwWbsjwOOcK', 'Derwi Cantik', '2001-10-16', 'Hindu', 'Rote', 'Perempuan', 'Jimbaran', '0987654321', 'AA181'),
('123', 'Laki-laki', 'guscan@gmail.com', '$2y$10$YL/tRYUCu.eGYoBbLmPVTed6WvRtFIxHWi3QXeZ2ev9gxlFGQ.nyy', 'I Kadek Agus Chandra Pradika', '1999-08-28', 'Hindu', 'Medewi', 'Laki-laki', 'Jimbaran, Badung, Bali', '08212345678', 'AA181'),
('124', 'Perempuan', 'theresia@gmail.com', '$2y$10$fvWeyk4D0apy2.YDM0jdDOEF4K3BVULV39SICDfvUL/R9jN884YWW', 'Theresia Girsang', '2000-12-12', 'Katolik', 'Medan', 'Perempuan', 'Jimbaran', '0821345678', 'AA181'),
('125', 'Laki-laki', 'jaya@gmail.com', '$2y$10$1kwRQCWkRIh0Z5JSvxbCLubLYVFgrNxrtYETv3rr4ZyNnMuUxSXiC', 'I Putu Sedana Wijaya', '1998-09-12', 'Buddha', 'Denpasar', 'Laki-laki', 'Jimbaran, Bali', '08987654321', 'AA181'),
('127', 'Laki-laki', 'ramen@gmail.com', '$2y$10$N0hKD1Carixh4L8vp/cSUeJ2SXqzb6BDZ8OKxuqKEUyAgtd/MURVK', 'Uzumaki Naruto', '2020-12-21', 'Buddha', 'Konoha', 'Laki-laki', 'Desa Konoha', '09876543211', 'AA181');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`resi`);

--
-- Indeks untuk tabel `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `fk_mapel` (`mapel`),
  ADD KEY `fk_kelas` (`kelas`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `fk_wali` (`wali_kelas`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `fk_pengajar` (`guru_pengajar`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indeks untuk tabel `uploaded`
--
ALTER TABLE `uploaded`
  ADD PRIMARY KEY (`id_uploaded`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nomor_induk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ebook`
--
ALTER TABLE `ebook`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mapel` FOREIGN KEY (`mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `fk_wali` FOREIGN KEY (`wali_kelas`) REFERENCES `guru` (`nip`);

--
-- Ketidakleluasaan untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `fk_pengajar` FOREIGN KEY (`guru_pengajar`) REFERENCES `guru` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
