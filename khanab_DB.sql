-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2022 at 06:48 AM
-- Server version: 8.0.30
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khanab_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADOPTION`
--

CREATE TABLE `ADOPTION` (
  `AdoptionDate` date DEFAULT NULL,
  `Status` varchar(15) NOT NULL,
  `AdoptionPetID` int DEFAULT NULL,
  `AdoptionOwnerID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ADOPTION`
--

INSERT INTO `ADOPTION` (`AdoptionDate`, `Status`, `AdoptionPetID`, `AdoptionOwnerID`) VALUES
('2021-03-31', 'ADOPTED', 101, 10),
('2021-03-31', 'ADOPTED', 101, 10),
('2021-03-31', 'ADOPTED', 101, 10),
(NULL, 'NOT ADOPTED', 102, 11),
('2022-04-13', 'ADOPTED', 103, 12),
(NULL, 'NOT ADOPTED', 104, 13),
('2020-08-09', 'ADOPTED', 105, 14),
('2022-04-16', 'ADOPTED', 106, 15),
('2021-01-20', 'ADOPTED', 107, 16),
('2020-01-11', 'RETURNED', 108, 17),
('2021-08-08', 'ADOPTED', 109, 18),
('2020-12-01', 'RETURNED', 110, 19),
('2022-09-28', 'RETURNED', 111, 20),
('2021-06-13', 'RETURNED', 112, 21),
('2021-01-24', 'ADOPTED', 113, 22),
('2021-03-31', 'ADOPTED', 101, 10),
(NULL, 'NOT ADOPTED', 102, 11),
('2022-04-13', 'ADOPTED', 103, 12),
(NULL, 'NOT ADOPTED', 104, 13),
('2020-08-09', 'ADOPTED', 105, 14),
('2022-04-16', 'ADOPTED', 106, 15),
('2021-01-20', 'ADOPTED', 107, 16),
('2020-01-11', 'RETURNED', 108, 17),
('2021-08-08', 'ADOPTED', 109, 18),
('2020-12-01', 'RETURNED', 110, 19),
('2022-09-28', 'RETURNED', 111, 20),
('2021-06-13', 'RETURNED', 112, 21),
('2021-01-24', 'ADOPTED', 113, 22),
(NULL, 'NOT ADOPTED', 114, 23),
(NULL, 'NOT ADOPTED', 115, 24),
(NULL, 'NOT ADOPTED', 116, 25),
(NULL, 'NOT ADOPTED', 117, 26),
(NULL, 'NOT ADOPTED', 118, 27),
(NULL, 'NOT ADOPTED', 119, 28),
(NULL, 'NOT ADOPTED', 120, 29),
('2022-07-02', 'RETURNED', 121, 30),
(NULL, 'NOT ADOPTED', 122, 31),
('2022-01-18', 'ADOPTED', 123, 32),
('2022-05-14', 'RETURNED', 124, 33),
('2021-10-05', 'ADOPTED', 125, 34),
(NULL, 'NOT ADOPTED', 126, 35),
('2022-03-28', 'RETURNED', 127, 36),
('2021-10-01', 'RETURNED', 128, 37),
('2021-05-06', 'RETURNED', 129, 38),
('2021-03-26', 'ADOPTED', 130, 39),
('2021-12-05', 'ADOPTED', 131, 40),
('2022-07-21', 'ADOPTED', 132, 41),
('2020-09-27', 'ADOPTED', 133, 42),
(NULL, 'NOT ADOPTED', 134, 43),
('2020-06-16', 'ADOPTED', 135, 44),
('2020-02-29', 'ADOPTED', 136, 45),
('2021-09-13', 'ADOPTED', 137, 46),
('2020-05-23', 'RETURNED', 138, 47),
('2022-07-24', 'ADOPTED', 139, 48),
('2022-03-16', 'ADOPTED', 140, 49);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Birth Date of Pets`
-- (See below for the actual view)
--
CREATE TABLE `Birth Date of Pets` (
`PetName` varchar(15)
,`Age` date
,`HealthStatus` varchar(15)
,`Species` varchar(20)
,`ArrivalDate` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Breed with Highest Adoption Rate`
-- (See below for the actual view)
--
CREATE TABLE `Breed with Highest Adoption Rate` (
`Breed` varchar(20)
,`AdoptionRate` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL`
--

CREATE TABLE `MEDICAL` (
  `Service` varchar(15) NOT NULL,
  `DateOfService` date NOT NULL,
  `Veterinarian` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Medication` varchar(20) NOT NULL,
  `Cost` varchar(10) NOT NULL,
  `MedicalPetID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MEDICAL`
--

INSERT INTO `MEDICAL` (`Service`, `DateOfService`, `Veterinarian`, `Medication`, `Cost`, `MedicalPetID`) VALUES
('Radiology', '2020-08-27', 'Erminia Norster', 'Acetaminophen', '75', 101),
('Surgery', '2022-07-23', 'Goldie Stive', 'HDCV', '300', 103),
('Surgery', '2021-12-14', 'Goldie Stive', 'Acetaminophen', '25', 103),
('Vaccination', '2020-02-03', 'Goldie Stive', 'HDCV', '300', 104),
('Surgery', '2020-11-23', 'Erminia Norster', 'Acetaminophen', '75', 104),
('Radiology', '2022-05-14', 'Erminia Norster', 'HDCV', '300', 105),
('Radiology', '2021-11-15', 'Erminia Norster', 'HDCV', '75', 106),
('Surgery', '2021-08-29', 'Erminia Norster', 'Gadolinium', '25', 106),
('Vaccination', '2021-09-06', 'Goldie Stive', 'Acetaminophen', '75', 107),
('Vaccination', '2020-10-16', 'Goldie Stive', 'HDCV', '25', 107),
('Radiology', '2021-04-12', 'Erminia Norster', 'HDCV', '300', 108),
('Surgery', '2020-06-14', 'Goldie Stive', 'HDCV', '75', 109),
('Vaccination', '2021-01-05', 'Erminia Norster', 'Acetaminophen', '75', 110),
('Surgery', '2021-02-17', 'Erminia Norster', 'Acetaminophen', '75', 111),
('Radiology', '2021-08-31', 'Goldie Stive', 'HDCV', '75', 112),
('Vaccination', '2020-04-16', 'Goldie Stive', 'Gadolinium', '75', 112),
('Radiology', '2021-03-09', 'Goldie Stive', 'Acetaminophen', '75', 113),
('Vaccination', '2022-08-21', 'Goldie Stive', 'Gadolinium', '25', 114),
('Vaccination', '2020-05-02', 'Goldie Stive', 'HDCV', '25', 117),
('Radiology', '2020-08-20', 'Goldie Stive', 'Gadolinium', '75', 117),
('Surgery', '2021-05-23', 'Goldie Stive', 'Acetaminophen', '75', 118),
('Surgery', '2022-07-10', 'Erminia Norster', 'HDCV', '25', 118),
('Radiology', '2021-06-30', 'Erminia Norster', 'Gadolinium', '300', 119),
('Surgery', '2021-09-07', 'Erminia Norster', 'HDCV', '300', 120),
('Vaccination', '2020-12-11', 'Goldie Stive', 'HDCV', '300', 120),
('Surgery', '2020-11-27', 'Goldie Stive', 'HDCV', '300', 121),
('Surgery', '2020-05-28', 'Erminia Norster', 'Acetaminophen', '75', 121),
('Surgery', '2020-03-28', 'Erminia Norster', 'Acetaminophen', '25', 122),
('Radiology', '2022-06-23', 'Goldie Stive', 'Acetaminophen', '75', 122),
('Radiology', '2021-07-20', 'Erminia Norster', 'Acetaminophen', '75', 123),
('Radiology', '2022-01-02', 'Goldie Stive', 'HDCV', '75', 123),
('Surgery', '2020-08-27', 'Erminia Norster', 'HDCV', '300', 124),
('Surgery', '2020-11-28', 'Goldie Stive', 'HDCV', '300', 125),
('Radiology', '2020-05-13', 'Goldie Stive', 'Gadolinium', '300', 126),
('Vaccination', '2020-05-02', 'Erminia Norster', 'HDCV', '300', 126),
('Surgery', '2021-11-21', 'Goldie Stive', 'HDCV', '75', 127),
('Vaccination', '2022-08-17', 'Goldie Stive', 'Acetaminophen', '75', 127),
('Radiology', '2022-02-19', 'Goldie Stive', 'Acetaminophen', '300', 128),
('Surgery', '2022-04-08', 'Goldie Stive', 'Acetaminophen', '75', 128),
('Surgery', '2022-10-03', 'Erminia Norster', 'Acetaminophen', '300', 129),
('Surgery', '2021-05-05', 'Erminia Norster', 'HDCV', '75', 130),
('Vaccination', '2021-07-03', 'Goldie Stive', 'Gadolinium', '25', 131),
('Radiology', '2022-03-22', 'Erminia Norster', 'Acetaminophen', '300', 132),
('Radiology', '2020-09-14', 'Erminia Norster', 'Gadolinium', '25', 134),
('Vaccination', '2020-09-03', 'Erminia Norster', 'Gadolinium', '300', 135),
('Radiology', '2021-03-12', 'Goldie Stive', 'Gadolinium', '25', 135),
('Vaccination', '2022-04-11', 'Goldie Stive', 'Acetaminophen', '300', 137),
('Radiology', '2020-07-20', 'Goldie Stive', 'Acetaminophen', '25', 137),
('Vaccination', '2020-03-09', 'Goldie Stive', 'Gadolinium', '25', 138),
('Radiology', '2020-08-14', 'Erminia Norster', 'Acetaminophen', '75', 139),
('Surgery', '2020-06-11', 'Goldie Stive', 'Acetaminophen', '300', 139),
('Surgery', '2022-08-09', 'Erminia Norster', 'Acetaminophen', '25', 140),
('Radiology', '2021-05-06', 'Erminia Norster', 'Acetaminophen', '300', 140),
('Surgery', '2022-03-17', 'Goldie Stive', 'HDCV', '25', 141),
('Surgery', '2021-01-26', 'Erminia Norster', 'HDCV', '75', 142),
('Radiology', '2022-08-04', 'Erminia Norster', 'Acetaminophen', '75', 143),
('Vaccination', '2022-08-29', 'Goldie Stive', 'Acetaminophen', '75', 144),
('Surgery', '2021-05-07', 'Erminia Norster', 'HDCV', '75', 145),
('Vaccination', '2020-09-12', 'Goldie Stive', 'Gadolinium', '300', 145),
('Surgery', '2021-08-28', 'Erminia Norster', 'Acetaminophen', '25', 146),
('Surgery', '2020-05-09', 'Erminia Norster', 'Acetaminophen', '75', 146),
('Vaccination', '2021-05-09', 'Goldie Stive', 'Gadolinium', '300', 147),
('Surgery', '2020-12-14', 'Erminia Norster', 'Acetaminophen', '300', 148),
('Radiology', '2021-04-17', 'Erminia Norster', 'Acetaminophen', '25', 148),
('Radiology', '2022-05-19', 'Erminia Norster', 'Acetaminophen', '25', 149),
('Radiology', '2021-02-23', 'Goldie Stive', 'Gadolinium', '75', 149),
('Radiology', '2021-01-10', 'Erminia Norster', 'Gadolinium', '300', 150),
('Radiology', '2022-11-10', 'Erminia Norster', 'Gadolinium', '75', 150),
('Radiology', '2021-08-23', 'Erminia Norster', 'HDCV', '75', 151),
('Vaccination', '2022-02-05', 'Erminia Norster', 'HDCV', '75', 151),
('Vaccination', '2021-03-03', 'Goldie Stive', 'Gadolinium', '75', 152),
('Radiology', '2021-03-05', 'Goldie Stive', 'Acetaminophen', '75', 153),
('Radiology', '2022-01-21', 'Erminia Norster', 'HDCV', '300', 154),
('Radiology', '2020-11-21', 'Goldie Stive', 'HDCV', '75', 155),
('Surgery', '2022-07-31', 'Goldie Stive', 'Gadolinium', '25', 155),
('Radiology', '2021-11-26', 'Erminia Norster', 'HDCV', '25', 156),
('Surgery', '2021-06-15', 'Goldie Stive', 'Acetaminophen', '25', 157),
('Radiology', '2021-07-20', 'Goldie Stive', 'HDCV', '75', 159),
('Surgery', '2021-02-20', 'Goldie Stive', 'Acetaminophen', '25', 160),
('Radiology', '2021-05-06', 'Sarine Collocott', 'Acetaminophen', '300', 140),
('Surgery', '2022-03-17', 'Sarine Collocott', 'HDCV', '25', 141),
('Vaccination', '2022-09-22', 'Sarine Collocott', 'HDCV', '75', 141),
('Surgery', '2021-01-26', 'Sarine Collocott', 'HDCV', '75', 142),
('Surgery', '2020-11-19', 'Sarine Collocott', 'Gadolinium', '75', 142),
('Vaccination', '2021-11-09', 'Sarine Collocott', 'Acetaminophen', '25', 143),
('Radiology', '2022-08-04', 'Sarine Collocott', 'Acetaminophen', '75', 143),
('Surgery', '2021-05-10', 'Sarine Collocott', 'HDCV', '75', 144),
('Vaccination', '2022-08-29', 'Sarine Collocott', 'Acetaminophen', '75', 144),
('Surgery', '2021-05-07', 'Sarine Collocott', 'HDCV', '75', 145),
('Vaccination', '2020-09-12', 'Sarine Collocott', 'Gadolinium', '300', 145),
('Surgery', '2021-08-28', 'Sarine Collocott', 'Acetaminophen', '25', 146),
('Surgery', '2020-05-09', 'Sarine Collocott', 'Acetaminophen', '75', 146),
('Radiology', '2022-01-30', 'Sarine Collocott', 'HDCV', '25', 147),
('Vaccination', '2021-05-09', 'Sarine Collocott', 'Gadolinium', '300', 147),
('Surgery', '2020-12-14', 'Sarine Collocott', 'Acetaminophen', '300', 148),
('Radiology', '2021-04-17', 'Sarine Collocott', 'Acetaminophen', '25', 148),
('Radiology', '2022-05-19', 'Sarine Collocott', 'Acetaminophen', '25', 149),
('Radiology', '2021-02-23', 'Sarine Collocott', 'Gadolinium', '75', 149),
('Radiology', '2021-01-10', 'Sarine Collocott', 'Gadolinium', '300', 150),
('Radiology', '2022-11-10', 'Sarine Collocott', 'Gadolinium', '75', 150),
('Radiology', '2021-08-23', 'Sarine Collocott', 'HDCV', '75', 151),
('Vaccination', '2022-02-05', 'Sarine Collocott', 'HDCV', '75', 151),
('Vaccination', '2021-03-03', 'Sarine Collocott', 'Gadolinium', '75', 152),
('Vaccination', '2022-07-23', 'Sarine Collocott', 'Acetaminophen', '25', 152),
('Radiology', '2022-06-14', 'Sarine Collocott', 'Gadolinium', '25', 153),
('Radiology', '2021-03-05', 'Sarine Collocott', 'Acetaminophen', '75', 153),
('Vaccination', '2022-10-13', 'Sarine Collocott', 'Acetaminophen', '25', 154),
('Radiology', '2022-01-21', 'Sarine Collocott', 'HDCV', '300', 154),
('Radiology', '2020-11-21', 'Sarine Collocott', 'HDCV', '75', 155),
('Surgery', '2022-07-31', 'Sarine Collocott', 'Gadolinium', '25', 155),
('Radiology', '2021-11-26', 'Sarine Collocott', 'HDCV', '25', 156),
('Surgery', '2021-02-07', 'Sarine Collocott', 'HDCV', '75', 156),
('Vaccination', '2022-11-01', 'Sarine Collocott', 'Acetaminophen', '75', 157),
('Surgery', '2021-06-15', 'Sarine Collocott', 'Acetaminophen', '25', 157),
('Vaccination', '2021-08-31', 'Sarine Collocott', 'Gadolinium', '300', 158),
('Vaccination', '2021-12-11', 'Sarine Collocott', 'Gadolinium', '300', 158),
('Radiology', '2021-07-20', 'Sarine Collocott', 'HDCV', '75', 159),
('Radiology', '2020-03-13', 'Sarine Collocott', 'HDCV', '75', 159),
('Radiology', '2022-04-07', 'Sarine Collocott', 'Gadolinium', '25', 160),
('Surgery', '2021-02-20', 'Sarine Collocott', 'Acetaminophen', '25', 160);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Medical Services on Pets in Date Order`
-- (See below for the actual view)
--
CREATE TABLE `Medical Services on Pets in Date Order` (
`PetName` varchar(15)
,`Service` varchar(15)
,`DateOfService` date
);

-- --------------------------------------------------------

--
-- Table structure for table `OWNER`
--

CREATE TABLE `OWNER` (
  `OwnerName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Preference` varchar(20) NOT NULL,
  `HomeVisit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `OwnerID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `OWNER`
--

INSERT INTO `OWNER` (`OwnerName`, `Phone`, `Address`, `Preference`, `HomeVisit`, `OwnerID`) VALUES
('Costantino  Rosina', '636-275-1676', '1 Merry Way, Denver, Colorado 80013', 'Snake', 'APPROVED', 10),
('Fikriyya  Livia', '685-164-7923', '2 Merry Way, Denver, Colorado 80013', 'Dog', 'APPROVED', 11),
('Bartolo  Fadila', '174-326-2890', '3 Merry Way, Denver, Colorado 80013', 'Cat', 'DENIED', 12),
('Fausto  Syeda', '736-280-3091', '4 Merry Way, Denver, Colorado 80013', 'Bird', 'APPROVED', 13),
('Omran  Qismat', '302-099-0824', '5 Merry Way, Denver, Colorado 80013', 'Lizard', 'DENIED', 14),
('Cosimo  Firdaus', '808-466-0003', '6 Merry Way, Denver, Colorado 80013', 'Snake', 'DENIED', 15),
('Sawsan  Ihab', '475-644-6801', '7 Merry Way, Denver, Colorado 80013', 'Bird', 'APPROVED', 16),
('Abdurrahim  Hatim', '678-122-1433', '8 Merry Way, Denver, Colorado 80013', 'Cat', 'DENIED', 17),
('Zainab  AbdalRahman', '694-906-4672', '1 Rosie Drive, Aurora, Colorado 80017', 'Snake', 'PENDING', 18),
('Akbar  Rahman', '499-786-1783', '2 Rosie Drive, Aurora, Colorado 80017', 'Cat', 'PENDING', 19),
('Adelmo  Donatello', '219-144-8194', '3 Rosie Drive, Aurora, Colorado 80017', 'Lizard', 'APPROVED', 20),
('Walter  Zhou', '981-558-2777', '4 Rosie Drive, Aurora, Colorado 80017', 'Cat', 'APPROVED', 21),
('Elettra  Vitalia', '773-090-1078', '5 Rosie Drive, Aurora, Colorado 80017', 'Cat', 'APPROVED', 22),
('Farrukh  Hira', '487-592-0887', '6 Rosie Drive, Aurora, Colorado 80017', 'Lizard', 'APPROVED', 23),
('Rinaldo  Atif', '271-758-8473', '7 Rosie Drive, Aurora, Colorado 80017', 'Cat', 'APPROVED', 24),
('Mercurio  Hakeem', '249-149-4173', '8 Rosie Drive, Aurora, Colorado 80017', 'Snake', 'PENDING', 25),
('Imram  Maurizio', '416-103-9965', '12 Donald Drive, Parker, Colorado, 80108', 'Snake', 'DENIED', 26),
('Sadia  Annetta', '150-276-3506', '13 Donald Drive, Parker, Colorado, 80108', 'Hamster', 'DENIED', 27),
('Rizwana  Livia', '974-976-8720', '14 Donald Drive, Parker, Colorado, 80108', 'Dog', 'APPROVED', 28),
('Nuri  Michelangela', '177-026-3757', '15 Donald Drive, Parker, Colorado, 80108', 'Cat', 'DENIED', 29),
('Sara  Diodato', '970-114-6231', '16 Donald Drive, Parker, Colorado, 80108', 'Dog', 'PENDING', 30),
('Sabri  Massimo', '576-181-7832', '17 Donald Drive, Parker, Colorado, 80108', 'Cat', 'PENDING', 31),
('Jolanda  Raza', '203-142-1008', '18 Donald Drive, Parker, Colorado, 80108', 'Hamster', 'PENDING', 32),
('Jameela  Liborio', '599-299-6971', '19 Donald Drive, Parker, Colorado, 80108', 'Cat', 'APPROVED', 33),
('Yan  Kareem', '541-043-0219', '20 Donald Drive, Parker, Colorado, 80108', 'Bird', 'DENIED', 34),
('Cosima  Angiolo', '714-277-6062', '20 Hawaii Road, Steamboat, Colorado 80477', 'Lizard', 'APPROVED', 35),
('Burhan alDin', '238-261-0761', '21 Hawaii Road, Steamboat, Colorado 80477', 'Cat', 'APPROVED', 36),
('Enea  Kubra', '501-038-7485', '22 Hawaii Road, Steamboat, Colorado 80477', 'Dog', 'DENIED', 37),
('Erminia  Domenico', '992-637-5377', '23 Hawaii Road, Steamboat, Colorado 80477', 'Snake', 'PENDING', 38),
('Chiara  Bernardino', '677-755-4028', '24 Hawaii Road, Steamboat, Colorado 80477', 'Cat', 'APPROVED', 39),
('Silvana  Binyamin', '125-749-2794', '25 Hawaii Road, Steamboat, Colorado 80477', 'Hamster', 'PENDING', 40),
('Alba  Eman', '411-048-6533', '26 Hawaii Road, Steamboat, Colorado 80477', 'Hamster', 'APPROVED', 41),
('Dana  Goffredo', '237-631-6400', '27 Hawaii Road, Steamboat, Colorado 80477', 'Snake', 'APPROVED', 42),
('Alice  Damiano', '602-688-4184', '28 Hawaii Road, Steamboat, Colorado 80477', 'Dog', 'DENIED', 43),
('Eliseo  Atifa', '432-603-4960', '29 Hawaii Road, Steamboat, Colorado 80477', 'Cat', 'DENIED', 44),
('Raimondo  Fadila', '222-798-7625', '30 Hawaii Road, Steamboat, Colorado 80477', 'Bird', 'DENIED', 45),
('Vitaliano  Nilo', '866-144-3826', '40 Washington Drive, Denver, Colorado, 80012', 'Cat', 'DENIED', 46),
('Haroon  Candido', '142-686-6243', '41 Washington Drive, Denver, Colorado, 80012', 'Dog', 'DENIED', 47),
('Silvano  Emanuela', '117-895-9070', '42 Washington Drive, Denver, Colorado, 80012', 'Cat', 'DENIED', 48),
('Cesare  Beniamino', '273-502-5793', '43 Washington Drive, Denver, Colorado, 80012', 'Cat', 'DENIED', 49),
('Mariella  Fawziya', '902-056-7252', '44 Washington Drive, Denver, Colorado, 80012', 'Bird', 'DENIED', 50),
('Natalino  Lauro', '506-835-6263', '45 Washington Drive, Denver, Colorado, 80012', 'Dog', 'APPROVED', 51),
('Domitilla  Hossam', '222-397-1111', '46 Washington Drive, Denver, Colorado, 80012', 'Lizard', 'DENIED', 52),
('Nur  Bushra', '200-957-5694', '47 Washington Drive, Denver, Colorado, 80012', 'Snake', 'PENDING', 53),
('Fatema  Caio', '649-650-5537', '48 Washington Drive, Denver, Colorado, 80012', 'Hamster', 'APPROVED', 54),
('Saifullah  Valentina', '433-740-0699', '49 Washington Drive, Denver, Colorado, 80012', 'Lizard', 'PENDING', 55),
('Shakir  Annunziato', '262-713-8610', '50 Washington Drive, Denver, Colorado, 80012', 'Hamster', 'DENIED', 56),
('Nasira  Hadiya', '348-235-8321', '60 Reagon Court, Aurora, Colorado, 80010', 'Snake', 'APPROVED', 57),
('Aamir  Elvia', '647-202-4202', '61 Reagon Court, Aurora, Colorado, 80010', 'Bird', 'PENDING', 58),
('Hamid  Cleto', '414-213-9150', '62 Reagon Court, Aurora, Colorado, 80010', 'Lizard', 'DENIED', 59),
('James Isaac', '355-787-5866', '63 Reagon Court, Aurora, Colorado, 80010', 'Bird', 'APPROVED', 60),
('Neal Gray', '700-618-9459', '64 Reagon Court, Aurora, Colorado, 80010', 'Hamster', 'APPROVED', 61),
('Jean Gray', '691-276-8298', '65 Reagon Court, Aurora, Colorado, 80010', 'Snake', 'DENIED', 62),
('Scott Summers', '853-055-2463', '66 Reagon Court, Aurora, Colorado, 80010', 'Dog', 'APPROVED', 63),
('Zoltan Chivay', '166-046-1501', '67 Reagon Court, Aurora, Colorado, 80010', 'Cat', 'DENIED', 64),
('Bugs Bunny', '962-503-2664', '68 Reagon Court, Aurora, Colorado, 80010', 'Dog', 'APPROVED', 65),
('Daffy Duck', '760-958-7690', '69 Reagon Court, Aurora, Colorado, 80010', 'Dog', 'DENIED', 66),
('Lola Bunny', '263-768-3657', '70 Reagon Court, Aurora, Colorado, 80010', 'Bird', 'DENIED', 67),
('Tina Duck', '137-231-4897', '80 Jackson Road, Denver, Colorado, 80013', 'Snake', 'DENIED', 68),
('Timmy Turner', '918-715-7671', '81 Jackson Road, Denver, Colorado, 80013', 'Hamster', 'PENDING', 69),
('Bob Pants', '528-973-4311', '82 Jackson Road, Denver, Colorado, 80013', 'Lizard', 'DENIED', 70),
('Eugene Krabs', '148-371-9749', '83 Jackson Road, Denver, Colorado, 80013', 'Bird', 'DENIED', 71),
('Sheldon Plankton', '743-216-0101', '84 Jackson Road, Denver, Colorado, 80013', 'Cat', 'DENIED', 72),
('Sandy Cheeks', '870-080-3067', '85 Jackson Road, Denver, Colorado, 80013', 'Dog', 'PENDING', 73),
('Larry Lobster', '711-428-6021', '86 Jackson Road, Denver, Colorado, 80013', 'Dog', 'PENDING', 74),
('Squidward Tentacles', '868-196-8834', '87 Jackson Road, Denver, Colorado, 80013', 'Cat', 'DENIED', 75),
('Harry Potter', '481-273-9653', '88 Jackson Road, Denver, Colorado, 80013', 'Snake', 'DENIED', 76),
('Ron Swanson', '401-230-9515', '89 Jackson Road, Denver, Colorado, 80013', 'Lizard', 'APPROVED', 77),
('Mary Margaret', '626-493-4056', '90 Jackson Road, Denver, Colorado, 80013', 'Dog', 'APPROVED', 78),
('Gold Roger', '613-806-1414', '91 Illinois Way, Boulder, Colorado, 80301', 'Hamster', 'DENIED', 79),
('Logan Wolverine', '559-290-0204', '92 Illinois Way, Boulder, Colorado, 80301', 'Lizard', 'DENIED', 80),
('Patrick Star', '401-121-1263', '93 Illinois Way, Boulder, Colorado, 80301', 'Cat', 'APPROVED', 81),
('Peter Griffin', '920-901-8265', '94 Illinois Way, Boulder, Colorado, 80301', 'Dog', 'DENIED', 82),
('Chris Griffin', '359-794-8959', '95 Illinois Way, Boulder, Colorado, 80301', 'Cat', 'PENDING', 83),
('Stewie Griffin', '161-503-7123', '96 Illinois Way, Boulder, Colorado, 80301', 'Bird', 'DENIED', 84);

-- --------------------------------------------------------

--
-- Table structure for table `PET`
--

CREATE TABLE `PET` (
  `PetName` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Breed` varchar(20) NOT NULL,
  `Species` varchar(20) NOT NULL,
  `Age` date NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `ArrivalDate` date NOT NULL,
  `HealthStatus` varchar(15) NOT NULL,
  `PetID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PET`
--

INSERT INTO `PET` (`PetName`, `Breed`, `Species`, `Age`, `Gender`, `Size`, `ArrivalDate`, `HealthStatus`, `PetID`) VALUES
('Garry', 'Iguana', 'Lizard', '2019-11-27', 'M', 'Large', '2020-11-23', 'SICK', 101),
('Rodd', 'Syrian', 'Hamster', '2018-04-26', 'M', 'Medium', '2021-11-04', 'HEALTHY', 102),
('Cyril', 'Gecko', 'Lizard', '2018-02-10', 'M', 'Medium', '2021-04-21', 'SICK', 103),
('Emilie', 'Sparrow', 'Bird', '2022-03-29', 'F', 'Small', '2021-08-09', 'INJURED', 104),
('Germana', 'Chinese', 'Hamster', '2020-09-02', 'F', 'Large', '2020-08-07', 'SICK', 105),
('Onfroi', 'Parrot', 'Bird', '2019-05-12', 'M', 'Medium', '2022-07-20', 'HEALTHY', 106),
('Ash', 'Beagle', 'Dog', '2018-01-14', 'M', 'Medium', '2022-06-11', 'SICK', 107),
('Todd', 'Gecko', 'Lizard', '2020-07-25', 'M', 'Small', '2022-02-19', 'SICK', 108),
('Taite', 'Python', 'Snake', '2021-12-19', 'M', 'Small', '2020-01-15', 'SICK', 109),
('Penelopa', 'Parrot', 'Bird', '2018-07-31', 'F', 'Large', '2022-09-16', 'INJURED', 110),
('Claudius', 'Maine Coon', 'Cat', '2020-09-24', 'M', 'Medium', '2021-11-18', 'HEALTHY', 111),
('Phillipe', 'Gecko', 'Lizard', '2018-03-26', 'M', 'Medium', '2020-02-13', 'HEALTHY', 112),
('Robinet', 'Chinese', 'Hamster', '2020-03-10', 'M', 'Medium', '2020-06-07', 'INJURED', 113),
('Hunter', 'Tabby', 'Cat', '2022-10-04', 'M', 'Large', '2021-01-05', 'INJURED', 114),
('Cammy', 'Cobra', 'Snake', '2021-11-28', 'F', 'Medium', '2021-11-18', 'INJURED', 115),
('Roxana', 'Akita', 'Dog', '2021-06-01', 'F', 'Medium', '2022-04-05', 'HEALTHY', 116),
('Claudius', 'Python', 'Snake', '2020-02-11', 'M', 'Large', '2021-03-11', 'HEALTHY', 117),
('Eleonora', 'Maine Coon', 'Cat', '2022-10-15', 'F', 'Medium', '2021-05-05', 'HEALTHY', 118),
('Dame', 'Akita', 'Dog', '2022-10-06', 'M', 'Small', '2020-04-19', 'SICK', 119),
('Marissa', 'Parrot', 'Bird', '2019-01-10', 'F', 'Large', '2022-08-20', 'HEALTHY', 120),
('Milton', 'Cobra', 'Snake', '2019-09-10', 'M', 'Large', '2021-02-28', 'INJURED', 121),
('Odo', 'Parrot', 'Bird', '2018-06-27', 'M', 'Large', '2022-04-20', 'HEALTHY', 122),
('Walton', 'Akita', 'Dog', '2021-04-17', 'M', 'Medium', '2020-08-14', 'SICK', 123),
('Jeannette', 'Gecko', 'Lizard', '2022-01-17', 'F', 'Medium', '2022-01-03', 'INJURED', 124),
('Roseline', 'Chinese', 'Hamster', '2021-08-23', 'F', 'Small', '2021-06-18', 'INJURED', 125),
('Marie', 'Akita', 'Dog', '2021-05-06', 'F', 'Medium', '2020-12-07', 'INJURED', 126),
('Barris', 'Akita', 'Dog', '2019-12-06', 'M', 'Small', '2020-03-03', 'SICK', 127),
('Quintus', 'Shiba Inu', 'Dog', '2020-02-27', 'M', 'Small', '2020-05-18', 'INJURED', 128),
('Patrizio', 'Sparrow', 'Bird', '2021-01-11', 'M', 'Medium', '2021-04-05', 'HEALTHY', 129),
('Idalia', 'Shiba Inu', 'Dog', '2019-09-16', 'F', 'Medium', '2020-01-17', 'SICK', 130),
('Omero', 'Iguana', 'Lizard', '2018-06-24', 'M', 'Small', '2020-03-14', 'SICK', 131),
('Barnabas', 'Persian', 'Cat', '2019-07-13', 'M', 'Large', '2021-07-03', 'HEALTHY', 132),
('Willy', 'Parrot', 'Bird', '2022-05-23', 'M', 'Medium', '2021-11-25', 'SICK', 133),
('Mack', 'Syrian', 'Hamster', '2021-01-25', 'M', 'Medium', '2021-02-02', 'INJURED', 134),
('Willis', 'Python', 'Snake', '2019-09-19', 'M', 'Large', '2021-03-06', 'INJURED', 135),
('Buddie', 'Syrian', 'Hamster', '2019-11-23', 'M', 'Large', '2022-05-03', 'HEALTHY', 136),
('Timmy', 'Chinese', 'Hamster', '2019-09-24', 'M', 'Large', '2022-08-17', 'INJURED', 137),
('Andrej', 'Shiba Inu', 'Dog', '2022-05-25', 'M', 'Small', '2021-02-15', 'HEALTHY', 138),
('Humberto', 'Cobra', 'Snake', '2021-09-10', 'M', 'Small', '2022-05-12', 'INJURED', 139),
('Ozzie', 'Parrot', 'Bird', '2020-09-08', 'M', 'Large', '2020-04-16', 'SICK', 140),
('Guenevere', 'Gecko', 'Lizard', '2021-02-17', 'F', 'Small', '2022-05-17', 'INJURED', 141),
('Florance', 'Gecko', 'Lizard', '2021-03-03', 'F', 'Medium', '2021-06-24', 'HEALTHY', 142),
('Jaye', 'Gecko', 'Lizard', '2018-11-06', 'M', 'Large', '2021-10-03', 'INJURED', 143),
('Alana', 'Syrian', 'Hamster', '2021-06-24', 'F', 'Large', '2021-11-29', 'INJURED', 144),
('Cassius', 'Iguana', 'Lizard', '2020-04-12', 'M', 'Small', '2021-08-15', 'INJURED', 145),
('Nils', 'Iguana', 'Lizard', '2021-09-17', 'M', 'Medium', '2020-10-03', 'INJURED', 146),
('Cirillo', 'Iguana', 'Lizard', '2022-06-18', 'M', 'Large', '2021-02-11', 'SICK', 147),
('Udell', 'Syrian', 'Hamster', '2018-12-08', 'M', 'Medium', '2020-05-23', 'HEALTHY', 148),
('Fayth', 'Persian', 'Cat', '2021-05-01', 'F', 'Medium', '2022-02-20', 'INJURED', 149),
('Karlis', 'Poodle', 'Dog', '2019-05-24', 'M', 'Large', '2021-05-07', 'INJURED', 150),
('Miguelita', 'Poodle', 'Dog', '2020-12-11', 'F', 'Large', '2021-10-01', 'INJURED', 151),
('Shell', 'Iguana', 'Lizard', '2018-09-20', 'F', 'Medium', '2021-02-13', 'HEALTHY', 152),
('Pall', 'Cobra', 'Snake', '2022-09-19', 'M', 'Large', '2021-07-18', 'SICK', 153),
('Gustav', 'Persian', 'Cat', '2021-08-26', 'M', 'Small', '2022-02-26', 'SICK', 154),
('Artus', 'Shiba Inu', 'Dog', '2019-09-08', 'M', 'Small', '2020-06-09', 'SICK', 155),
('Ema', 'Maine Coon', 'Cat', '2019-11-03', 'F', 'Medium', '2022-07-20', 'HEALTHY', 156),
('Ulla', 'Tabby', 'Cat', '2018-07-18', 'F', 'Large', '2021-04-16', 'HEALTHY', 157),
('Ardyce', 'Tabby', 'Cat', '2022-05-30', 'F', 'Small', '2021-03-08', 'HEALTHY', 158),
('Nicoli', 'Chinese', 'Hamster', '2022-03-03', 'F', 'Small', '2021-07-11', 'HEALTHY', 159),
('Skyler', 'Cobra', 'Snake', '2022-11-21', 'M', 'Medium', '2020-10-22', 'HEALTHY', 160);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Pets Adopted Each Year`
-- (See below for the actual view)
--
CREATE TABLE `Pets Adopted Each Year` (
`PetName` varchar(15)
,`OwnerName` varchar(20)
,`AdoptionDate` date
,`Status` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Pets Not Adopted and Length of Stay`
-- (See below for the actual view)
--
CREATE TABLE `Pets Not Adopted and Length of Stay` (
`PetName` varchar(15)
,`Breed` varchar(20)
,`LengthOfStay` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Preferred Pet Match for Unadopted Pets`
-- (See below for the actual view)
--
CREATE TABLE `Preferred Pet Match for Unadopted Pets` (
`PetName` varchar(15)
,`Species` varchar(20)
,`OwnerName` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `Birth Date of Pets`
--
DROP TABLE IF EXISTS `Birth Date of Pets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`khanab`@`localhost` SQL SECURITY DEFINER VIEW `Birth Date of Pets`  AS SELECT `PET`.`PetName` AS `PetName`, `PET`.`Age` AS `Age`, `PET`.`HealthStatus` AS `HealthStatus`, `PET`.`Species` AS `Species`, `PET`.`ArrivalDate` AS `ArrivalDate` FROM (`PET` join `ADOPTION` on((`PET`.`PetID` = `ADOPTION`.`AdoptionPetID`))) ORDER BY `PET`.`Species` ASC, `PET`.`Age` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `Breed with Highest Adoption Rate`
--
DROP TABLE IF EXISTS `Breed with Highest Adoption Rate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`khanab`@`localhost` SQL SECURITY DEFINER VIEW `Breed with Highest Adoption Rate`  AS SELECT `PET`.`Breed` AS `Breed`, count(`ADOPTION`.`AdoptionPetID`) AS `AdoptionRate` FROM (`PET` join `ADOPTION` on((`PET`.`PetID` = `ADOPTION`.`AdoptionPetID`))) GROUP BY `PET`.`Breed` ORDER BY `AdoptionRate` DESC LIMIT 0, 1 ;

-- --------------------------------------------------------

--
-- Structure for view `Medical Services on Pets in Date Order`
--
DROP TABLE IF EXISTS `Medical Services on Pets in Date Order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`khanab`@`localhost` SQL SECURITY DEFINER VIEW `Medical Services on Pets in Date Order`  AS SELECT `PET`.`PetName` AS `PetName`, `MEDICAL`.`Service` AS `Service`, `MEDICAL`.`DateOfService` AS `DateOfService` FROM (`PET` join `MEDICAL` on((`PET`.`PetID` = `MEDICAL`.`MedicalPetID`))) ORDER BY `MEDICAL`.`DateOfService` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `Pets Adopted Each Year`
--
DROP TABLE IF EXISTS `Pets Adopted Each Year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`khanab`@`localhost` SQL SECURITY DEFINER VIEW `Pets Adopted Each Year`  AS SELECT `PET`.`PetName` AS `PetName`, `OWNER`.`OwnerName` AS `OwnerName`, `ADOPTION`.`AdoptionDate` AS `AdoptionDate`, `ADOPTION`.`Status` AS `Status` FROM ((`PET` join `ADOPTION` on((`PET`.`PetID` = `ADOPTION`.`AdoptionPetID`))) join `OWNER` on((`ADOPTION`.`AdoptionOwnerID` = `OWNER`.`OwnerID`))) ORDER BY extract(year from `ADOPTION`.`AdoptionDate`) ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Pets Not Adopted and Length of Stay`
--
DROP TABLE IF EXISTS `Pets Not Adopted and Length of Stay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`khanab`@`localhost` SQL SECURITY DEFINER VIEW `Pets Not Adopted and Length of Stay`  AS SELECT `PET`.`PetName` AS `PetName`, `PET`.`Breed` AS `Breed`, (to_days(curdate()) - to_days(`PET`.`ArrivalDate`)) AS `LengthOfStay` FROM (`PET` left join `ADOPTION` on((`PET`.`PetID` = `ADOPTION`.`AdoptionPetID`))) WHERE (`ADOPTION`.`AdoptionPetID` is null) ;

-- --------------------------------------------------------

--
-- Structure for view `Preferred Pet Match for Unadopted Pets`
--
DROP TABLE IF EXISTS `Preferred Pet Match for Unadopted Pets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`khanab`@`localhost` SQL SECURITY DEFINER VIEW `Preferred Pet Match for Unadopted Pets`  AS SELECT `PET`.`PetName` AS `PetName`, `PET`.`Species` AS `Species`, `OWNER`.`OwnerName` AS `OwnerName` FROM ((`PET` join `OWNER` on((`PET`.`Species` = `OWNER`.`Preference`))) left join `ADOPTION` on((`PET`.`PetID` = `ADOPTION`.`AdoptionPetID`))) WHERE (`ADOPTION`.`AdoptionPetID` is null) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADOPTION`
--
ALTER TABLE `ADOPTION`
  ADD KEY `Fkey_PetID` (`AdoptionPetID`),
  ADD KEY `Fkey_OwnerID` (`AdoptionOwnerID`);

--
-- Indexes for table `MEDICAL`
--
ALTER TABLE `MEDICAL`
  ADD KEY `Fkey_MedicalPetID` (`MedicalPetID`);

--
-- Indexes for table `OWNER`
--
ALTER TABLE `OWNER`
  ADD PRIMARY KEY (`OwnerID`);

--
-- Indexes for table `PET`
--
ALTER TABLE `PET`
  ADD PRIMARY KEY (`PetID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADOPTION`
--
ALTER TABLE `ADOPTION`
  ADD CONSTRAINT `Fkey_OwnerID` FOREIGN KEY (`AdoptionOwnerID`) REFERENCES `OWNER` (`OwnerID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Fkey_PetID` FOREIGN KEY (`AdoptionPetID`) REFERENCES `PET` (`PetID`);

--
-- Constraints for table `MEDICAL`
--
ALTER TABLE `MEDICAL`
  ADD CONSTRAINT `Fkey_MedicalPetID` FOREIGN KEY (`MedicalPetID`) REFERENCES `PET` (`PetID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
