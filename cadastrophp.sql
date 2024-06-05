-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/06/2024 às 20:53
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastrophp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `email`, `cpf`) VALUES
('Rafael', 'rafael@gmail.com', 514568958),
('Rafael', 'rafael@gmail.com', 514568958),
('grd', 'rafaelcortessoares@gmail.com', 2147483647),
('grd', 'rafaelcortessoares@gmail.com', 2147483647),
('grd', 'rafaelcortessoares@gmail.com', 2147483647),
('grd', 'rafaelcortessoares@gmail.com', 2147483647),
('grd1', 'rafaelcortessoares@gmail.com', 2147483647),
('grd2', 'rafaelcortessoares@gmail.com', 2147483647),
('grd3', 'rafaelcortessoares@gmail.com', 2147483647),
('grd', 'rafael@rafael.com', 123456),
('MARIA DAS GRAÇAS SOARES BARBOSA', 'rafael@rafael.com', 123456);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
