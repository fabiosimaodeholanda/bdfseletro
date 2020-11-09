-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 09-Nov-2020 às 23:04
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `pedido` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(10) COLLATE utf8mb4_croatian_ci NOT NULL,
  `endereço` varchar(100) COLLATE utf8mb4_croatian_ci NOT NULL,
  `telefone` float NOT NULL,
  `produto` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `valorunitario` float NOT NULL,
  `quantidade` float NOT NULL,
  `valortotal` float NOT NULL,
  PRIMARY KEY (`pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`pedido`, `cliente`, `endereço`, `telefone`, `produto`, `valorunitario`, `quantidade`, `valortotal`) VALUES
(1, 'Lucas', 'Rio de Janeiro, Duque de Caxias, Saracuruna, Rua j, quadra d', 1000000000, 'geladeira', 2750, 2, 5500),
(2, 'Joao', 'Rio de Janeiro, Duque de Caxias, Saracuruna, Rua h', 1000000000, 'fogao', 2150, 2, 4300);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `preco` float NOT NULL,
  `precofinal` float NOT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `categoria`, `descricao`, `imagem`, `preco`, `precofinal`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', 'imagens/Produtos/geladeira%20brastemp.jpg', 6389, 5019),
(5, 'fogao', 'Fogão Brastemp Branco 6 Bocas', 'imagens/Produtos/fogao%20brastemp.jpg', 2650, 2150),
(3, 'geladeira', 'Geladeira Consul Frost Free Duplex Branco 340 litros', 'imagens/Produtos/geladeira%20consul.png', 3350, 2750),
(4, 'geladeira', 'Geladeira Electrolux Top Free Branco 474 litros', 'imagens/Produtos/geladeira%20electrolux.png', 3350, 2900),
(6, 'fogao', 'Fogão Consul Inox 5 Bocas', 'imagens/Produtos/fogao%20consul.png', 1350, 1250),
(7, 'micro-ondas', 'Micro-ondas Brastemp Inox 20 litros', 'imagens/Produtos/micro-ondas%20brastemp.png', 1250, 1050),
(8, 'micro-ondas', 'Micro-ondas Consul Puxador na Porta 20 litros', 'imagens/Produtos/micro-ondas%20consul.png', 800, 600),
(9, 'micro-ondas', 'Micro-ondas Electrolux 20 litros', 'imagens/Produtos/micro-ondas%20electrolux.jpg', 900, 500),
(10, 'lavadora de roupas', 'Lavadora de roupas Brastemp 9kg com Ciclo Tira Manchas e Enxágue Duplo', 'imagens/Produtos/lavadora%20brastemp.png', 2350, 1750),
(11, 'lavadora de roupas', 'Lavadora de roupas Consul 9kg Branca', 'imagens/Produtos/lavadora%20consul.jpg', 1350, 1050),
(12, 'lava-louças', 'Lava-louças Brastemp 14 serviços Inox com Ciclo Pesado', 'imagens/Produtos/lava-lou%C3%A7as%20brastemp.jpg', 4350, 3950),
(13, 'lava-louças', 'Lava-louças Electrolux 14 serviços Inox', 'imagens/Produtos/lava-lou%C3%A7a%20electrolux.jpg', 6350, 5750);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
