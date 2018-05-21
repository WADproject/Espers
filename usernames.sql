-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 21, 2018 at 12:13 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `project2018`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `usernames`
-- 

CREATE TABLE `usernames` (
  `id` int(65) NOT NULL,
  `firstname` varchar(65) collate latin1_general_ci NOT NULL,
  `lastname` varchar(65) collate latin1_general_ci NOT NULL,
  `email` varchar(65) collate latin1_general_ci NOT NULL,
  `gender` varchar(65) collate latin1_general_ci NOT NULL,
  `Birth` date NOT NULL,
  `IBAN` varchar(65) collate latin1_general_ci NOT NULL,
  `password` varchar(65) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `usernames`
-- 

INSERT INTO `usernames` (`id`, `firstname`, `lastname`, `email`, `gender`, `Birth`, `IBAN`, `password`) VALUES 
(0, 'Cris', 'jay', 'cris.jay@gmail.com', 'M', '1999-04-03', '886472', '92f2fd99879b0c2466ab8648afb63c49032379c1'),
(1, 'Alex', 'next', 'Alex@yahoo.com', 'M', '1857-07-08', '9462375', 'ddb5877c896f43e8734e10b001e7f1eb92889cd'),
(2, 'user1', '', '', 'M', '2000-03-02', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(3, 'Alin', 'Gab', 'gab@gmail.com', 'M', '1997-02-03', '87965423', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'aaa', 'bbb', 'bbb@gmail.com', 'M', '1997-02-03', '7895462', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9'),
(5, 'bbb', '', '', 'M', '1997-02-03', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(6, 'sami', '', '', 'M', '1998-06-05', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(7, 'lala', '', 'landlalaland@yahoo.com', 'M', '0000-00-00', '', 'b6589fc6ab0dc82cf12099d1c2d40ab994e8410c'),
(8, 'Rawan', '', 'lara@gmail.com', 'M', '0000-00-00', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(9, 'a', 'a', 'a@gmail.com', 'M', '2000-04-06', '2', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(10, 'megan', 'markle', 'megan@gmail.com', 'F', '1982-05-06', '78965412', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9');
