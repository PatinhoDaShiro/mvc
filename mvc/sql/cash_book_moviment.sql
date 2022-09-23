-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Set-2022 às 15:10
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cash_book`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `moviment`
--

CREATE TABLE `moviment` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(120) NOT NULL,
  `date` date NOT NULL,
  `value` double NOT NULL,
  `type` enum('input','output') NOT NULL DEFAULT 'input',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `moviment`
--

INSERT INTO `moviment` (`id`, `description`, `date`, `value`, `type`, `user_id`) VALUES
(1, 'Venda a vista', '2005-12-01', 35.9, 'input', 1),
(2, 'Venda de mercadorias a vista', '2013-08-16', 98.45, 'input', 1),
(3, 'Serviço de limpeza', '2022-08-01', 120, 'output', 1),
(4, 'Pagamento de materiais', '2022-08-01', 250, 'output', 1),
(5, 'Pagamento internet', '1905-12-08', 105.9, 'output', 1),
(6, 'venda de mercadorias', '2022-08-01', 65, 'input', 1),
(7, 'Venda de serviço', '2022-08-01', 90, 'input', 1),
(8, 'Pagamente imostos', '2022-08-01', 189.56, 'output', 1),
(9, 'Venda de produtos', '2022-08-01', 22.85, 'input', 1),
(10, 'Venda de produtos', '2022-08-01', 165.45, 'input', 1),
(11, 'Pagamento energia elátrica', '2022-08-01', 388.85, 'output', 1),
(12, 'Pagamento serviço de segurança', '2022-08-01', 150, 'output', 1),
(13, 'Pagamento materiais de escritório', '2022-08-01', 89.45, 'output', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `moviment`
--
ALTER TABLE `moviment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_moviment_user_idx` (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `moviment`
--
ALTER TABLE `moviment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `moviment`
--
ALTER TABLE `moviment`
  ADD CONSTRAINT `fk_moviment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
