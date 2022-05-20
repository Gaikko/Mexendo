-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2022 às 17:08
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_de_dados`
--
CREATE DATABASE IF NOT EXISTS `banco_de_dados` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `banco_de_dados`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `Descricao` varchar(30) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `Descricao`, `Status`) VALUES
(1, 'Carro', 1),
(2, 'Vans', 1),
(4, 'kfgkf', 1),
(5, 'ghkgk', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Endereco` varchar(100) NOT NULL,
  `Telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`Id`, `Nome`, `Endereco`, `Telefone`) VALUES
(1, 'Gaikko', 'Rua Tal', '33971223'),
(2, 'Roselly', 'Rua Coisa', '92431520'),
(3, 'Elisa', 'Rua de Brilhantes', '981148042'),
(4, 'Marta', 'Rua Medrado', '992122105'),
(5, 'Antonio', 'Rua Crau', '991078699'),
(7, 'Alonso', 'Brilhantina', '85852525'),
(8, 'Alonso', 'Brilhantina', '85852525'),
(9, 'Alonso', 'Brilhantina', '85852525'),
(10, 'Alonso', 'Brilhantina', '85852525'),
(11, 'Alonso', 'Brilhantina', '85852525');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Uq_Cat_Descricao` (`Descricao`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Banco de dados: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `Id_Autor` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`Id_Autor`, `Nome`, `Email`) VALUES
(1, 'Castelo Branco', 'cb@cb.com'),
(2, 'Santos Dummont', 'sd@sd.com'),
(3, 'Monte Carlo', 'mc@mc.com'),
(4, 'Leonardo Da Vinci', 'ld@ld.com'),
(5, 'Cassiano Barbosa', 'csb@csb.com'),
(6, 'Robson Pinheiro', 'rp@rp.com'),
(7, 'Hilary Duff', 'hd@hd.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Telefone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`Id_Cliente`, `Nome`, `Telefone`) VALUES
(1, 'Melissa Ferreira', '33971223'),
(2, 'Fabricio Tavares', '85856565'),
(3, 'Elaine Luciana', '95858545');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `Id_Editora` int(11) NOT NULL,
  `Nome_Editora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`Id_Editora`, `Nome_Editora`) VALUES
(6, 'Benvirá'),
(1, 'Brasil'),
(4, 'FTD'),
(3, 'Livromat'),
(5, 'Mercurio'),
(2, 'Saraiva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escreve`
--

CREATE TABLE `escreve` (
  `Id_Livro` int(11) NOT NULL,
  `Id_Autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `escreve`
--

INSERT INTO `escreve` (`Id_Livro`, `Id_Autor`) VALUES
(5, 5),
(1, 1),
(4, 4),
(9, 3),
(3, 2),
(10, 2),
(6, 3),
(2, 4),
(8, 1),
(7, 5),
(21, 1),
(12, 6),
(11, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `Descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`Id_Genero`, `Descricao`) VALUES
(1, 'Romance'),
(2, 'Drama'),
(3, 'Suspense'),
(4, 'Comedia'),
(5, 'Literatura Cultural Local');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_da_venda`
--

CREATE TABLE `itens_da_venda` (
  `Id_Venda` int(11) NOT NULL,
  `Id_Livro` int(11) NOT NULL,
  `Qtde` int(11) NOT NULL,
  `Subtotal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens_da_venda`
--

INSERT INTO `itens_da_venda` (`Id_Venda`, `Id_Livro`, `Qtde`, `Subtotal`) VALUES
(1, 11, 1, '189.65'),
(2, 5, 1, '599'),
(3, 7, 1, '822'),
(4, 12, 1, '19.99'),
(5, 10, 3, '2556'),
(6, 10, 3, '2556'),
(7, 9, 9, '4122');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `Id_livro` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `preco` float NOT NULL,
  `estoque` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL,
  `Id_Editora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`Id_livro`, `Titulo`, `preco`, `estoque`, `Id_Genero`, `Id_Editora`) VALUES
(1, 'Contos da Meia Noite', 159, 2, 2, 1),
(2, 'Segurança de Shopping', 15, 5, 4, 4),
(3, 'Menina dos Olhos Vermelhos', 459, 6, 2, 2),
(4, 'Macaco Vê, Macaco Faz', 56, 5, 5, 4),
(5, 'A Floresta', 599, 8, 3, 5),
(6, 'Rasteira', 15, 5, 4, 3),
(7, 'Vida à DoIs', 822, 85, 1, 5),
(8, 'Vida Dupla', 75, 5, 2, 1),
(9, 'Maria e seus 3 maridos', 458, 65, 4, 3),
(10, 'Menino de Ouro', 852, 85, 5, 2),
(11, 'Milagre de Natal', 189.65, 2, 5, 2),
(12, 'Bichos Monstruosos', 19.99, 1, 3, 6),
(21, 'Nova Geração', 15, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `Id_Venda` int(11) NOT NULL,
  `Data` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Total` float NOT NULL,
  `Id_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`Id_Venda`, `Data`, `Total`, `Id_Cliente`) VALUES
(1, '2022-01-20 10:39:36', 189.65, 1),
(2, '2022-01-20 10:39:37', 599, 2),
(3, '2022-01-24 08:05:32', 822, 3),
(4, '2022-01-25 11:30:39', 19.99, 1),
(5, '2022-01-26 08:14:07', 2556, 2),
(6, '2022-01-26 08:18:10', 2556, 2),
(7, '2022-01-26 09:02:15', 4122, 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_cliente_por_editora`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_cliente_por_editora` (
`Editora` varchar(50)
,`Titulo do Livro` varchar(100)
,`Número da Venda` int(11)
,`Nome do Cliente` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_estoque_por_autor`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_estoque_por_autor` (
`Saldo de Estoque` int(11)
,`Titulo do Livro` varchar(100)
,`Nome do Autor` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_genero_por_cliente`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_genero_por_cliente` (
`Titulo do Livro` varchar(100)
,`Gênero` varchar(100)
,`Nome do Cliente` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_livro_por_autor`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_livro_por_autor` (
`Nome do Autor` varchar(100)
,`Gênero` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_livro_por_estoque_zerado`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_livro_por_estoque_zerado` (
`Nome do Autor` varchar(100)
,`Titulo do Livro` varchar(100)
,`Estoque Atual` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_livro_por_maxpreco`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_livro_por_maxpreco` (
`Código do Livro` int(11)
,`Titulo` varchar(100)
,`Preço` float
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_livro_por_minpreco`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_livro_por_minpreco` (
`Código do Livro` int(11)
,`Titulo do Livro` varchar(100)
,`Preço do Livro` float
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_qtdemax_por_livro`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_qtdemax_por_livro` (
`Quantidade Vendida` int(11)
,`Titulo do Livro` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_qtde_livro_por_editora`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_qtde_livro_por_editora` (
`Quantidade de Livros` bigint(21)
,`Editora` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_qtde_por_autor`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_qtde_por_autor` (
`Qtde Clientes` bigint(21)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_qtde_vendida_por_autor`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_qtde_vendida_por_autor` (
`Número da Venda` int(11)
,`Titulo do Livro` varchar(100)
,`Nome do Autor` varchar(100)
,`Quantidade` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_titulo_genero_autor`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_titulo_genero_autor` (
`Titulo do Livro` varchar(100)
,`Gênero` varchar(100)
,`Id do Livro` int(11)
,`Id do Autor` int(11)
,`Nome do Autor` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_cliente_por_editora`
--
DROP TABLE IF EXISTS `vw_cliente_por_editora`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_cliente_por_editora`  AS SELECT `e`.`Nome_Editora` AS `Editora`, `l`.`Titulo` AS `Titulo do Livro`, `v`.`Id_Venda` AS `Número da Venda`, `c`.`Nome` AS `Nome do Cliente` FROM ((((`editora` `e` left join `livro` `l` on(`l`.`Id_Editora` = `e`.`Id_Editora`)) left join `itens_da_venda` `iv` on(`iv`.`Id_Livro` = `l`.`Id_livro`)) left join `venda` `v` on(`iv`.`Id_Venda` = `v`.`Id_Venda`)) left join `cliente` `c` on(`v`.`Id_Cliente` = `c`.`Id_Cliente`)) WHERE `iv`.`Qtde` >= 1 AND `e`.`Nome_Editora` like 'Benvira%' ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_estoque_por_autor`
--
DROP TABLE IF EXISTS `vw_estoque_por_autor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_estoque_por_autor`  AS SELECT `l`.`estoque` AS `Saldo de Estoque`, `l`.`Titulo` AS `Titulo do Livro`, `a`.`Nome` AS `Nome do Autor` FROM ((`livro` `l` left join `escreve` `e` on(`e`.`Id_Livro` = `l`.`Id_livro`)) left join `autor` `a` on(`e`.`Id_Autor` = `a`.`Id_Autor`)) WHERE `a`.`Nome` like 'Cassiano%' AND `l`.`estoque` >= 1 ORDER BY `a`.`Nome` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_genero_por_cliente`
--
DROP TABLE IF EXISTS `vw_genero_por_cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_genero_por_cliente`  AS SELECT `l`.`Titulo` AS `Titulo do Livro`, `g`.`Descricao` AS `Gênero`, `c`.`Nome` AS `Nome do Cliente` FROM ((((`itens_da_venda` `itv` left join `livro` `l` on(`itv`.`Id_Livro` = `l`.`Id_livro`)) left join `genero` `g` on(`l`.`Id_Genero` = `g`.`Id_Genero`)) left join `venda` `v` on(`itv`.`Id_Venda` = `v`.`Id_Venda`)) left join `cliente` `c` on(`v`.`Id_Cliente` = `c`.`Id_Cliente`)) WHERE `c`.`Nome` like 'Elaine%' ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_livro_por_autor`
--
DROP TABLE IF EXISTS `vw_livro_por_autor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_livro_por_autor`  AS SELECT `a`.`Nome` AS `Nome do Autor`, `g`.`Descricao` AS `Gênero` FROM (((`autor` `a` join `escreve` `e` on(`a`.`Id_Autor` = `e`.`Id_Autor`)) join `livro` `l` on(`e`.`Id_Livro` = `l`.`Id_livro`)) join `genero` `g` on(`l`.`Id_Genero` = `g`.`Id_Genero`)) WHERE `a`.`Nome` like 'Robson%' ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_livro_por_estoque_zerado`
--
DROP TABLE IF EXISTS `vw_livro_por_estoque_zerado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_livro_por_estoque_zerado`  AS SELECT `a`.`Nome` AS `Nome do Autor`, `l`.`Titulo` AS `Titulo do Livro`, `l`.`estoque` AS `Estoque Atual` FROM ((`autor` `a` left join `escreve` `e` on(`e`.`Id_Autor` = `a`.`Id_Autor`)) left join `livro` `l` on(`e`.`Id_Livro` = `l`.`Id_livro`)) WHERE `l`.`estoque` <= 0 ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_livro_por_maxpreco`
--
DROP TABLE IF EXISTS `vw_livro_por_maxpreco`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_livro_por_maxpreco`  AS SELECT `l`.`Id_livro` AS `Código do Livro`, `l`.`Titulo` AS `Titulo`, `l`.`preco` AS `Preço` FROM `livro` AS `l` WHERE `l`.`preco` in (select max(`l`.`preco`)) ORDER BY `l`.`preco` DESC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_livro_por_minpreco`
--
DROP TABLE IF EXISTS `vw_livro_por_minpreco`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_livro_por_minpreco`  AS SELECT `l`.`Id_livro` AS `Código do Livro`, `l`.`Titulo` AS `Titulo do Livro`, `l`.`preco` AS `Preço do Livro` FROM `livro` AS `l` WHERE `l`.`preco` in (select max(`l`.`preco`)) ORDER BY `l`.`preco` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_qtdemax_por_livro`
--
DROP TABLE IF EXISTS `vw_qtdemax_por_livro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_qtdemax_por_livro`  AS SELECT max(`iv`.`Qtde`) AS `Quantidade Vendida`, `l`.`Titulo` AS `Titulo do Livro` FROM (`itens_da_venda` `iv` join `livro` `l` on(`iv`.`Id_Livro` = `l`.`Id_livro`)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_qtde_livro_por_editora`
--
DROP TABLE IF EXISTS `vw_qtde_livro_por_editora`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_qtde_livro_por_editora`  AS SELECT count(`l`.`Id_livro`) AS `Quantidade de Livros`, `e`.`Nome_Editora` AS `Editora` FROM (`livro` `l` join `editora` `e` on(`l`.`Id_Editora` = `e`.`Id_Editora`)) WHERE `e`.`Nome_Editora` like 'S%' GROUP BY `l`.`Id_Editora` ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_qtde_por_autor`
--
DROP TABLE IF EXISTS `vw_qtde_por_autor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_qtde_por_autor`  AS SELECT count(`v`.`Id_Cliente`) AS `Qtde Clientes` FROM (((`venda` `v` join `itens_da_venda` `iv` on(`iv`.`Id_Venda` = `v`.`Id_Venda`)) join `escreve` `e` on(`iv`.`Id_Livro` = `e`.`Id_Livro`)) join `autor` `a` on(`e`.`Id_Autor` = `a`.`Id_Autor`)) WHERE `a`.`Nome` like 'Hilary%' ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_qtde_vendida_por_autor`
--
DROP TABLE IF EXISTS `vw_qtde_vendida_por_autor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_qtde_vendida_por_autor`  AS SELECT `iv`.`Id_Venda` AS `Número da Venda`, `l`.`Titulo` AS `Titulo do Livro`, `a`.`Nome` AS `Nome do Autor`, `iv`.`Qtde` AS `Quantidade` FROM (((`itens_da_venda` `iv` join `livro` `l` on(`l`.`Id_livro` = `iv`.`Id_Livro`)) join `escreve` `e` on(`l`.`Id_livro` = `e`.`Id_Livro`)) join `autor` `a` on(`e`.`Id_Autor` = `a`.`Id_Autor`)) WHERE `iv`.`Qtde` >= 2 ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_titulo_genero_autor`
--
DROP TABLE IF EXISTS `vw_titulo_genero_autor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_titulo_genero_autor`  AS SELECT `livro`.`Titulo` AS `Titulo do Livro`, `genero`.`Descricao` AS `Gênero`, `escreve`.`Id_Livro` AS `Id do Livro`, `escreve`.`Id_Autor` AS `Id do Autor`, `autor`.`Nome` AS `Nome do Autor` FROM (((`livro` left join `genero` on(`livro`.`Id_Genero` = `genero`.`Id_Genero`)) left join `escreve` on(`escreve`.`Id_Livro` = `livro`.`Id_livro`)) left join `autor` on(`escreve`.`Id_Autor` = `autor`.`Id_Autor`)) ORDER BY `autor`.`Nome` ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Id_Autor`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`Id_Editora`),
  ADD UNIQUE KEY `Nome_Editora` (`Nome_Editora`);

--
-- Índices para tabela `escreve`
--
ALTER TABLE `escreve`
  ADD KEY `Fk_Id_Autor` (`Id_Autor`),
  ADD KEY `Fk_Id_Livro` (`Id_Livro`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Índices para tabela `itens_da_venda`
--
ALTER TABLE `itens_da_venda`
  ADD KEY `Fk_Id_Livro_Venda` (`Id_Livro`),
  ADD KEY `Fk_Id_Venda` (`Id_Venda`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`Id_livro`),
  ADD KEY `Fk_Id_Genero` (`Id_Genero`),
  ADD KEY `Fk_Id_Editora` (`Id_Editora`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`Id_Venda`),
  ADD KEY `Fk_Id_Cliente` (`Id_Cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `Id_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `Id_Editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `Id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `Id_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `escreve`
--
ALTER TABLE `escreve`
  ADD CONSTRAINT `Fk_Id_Autor` FOREIGN KEY (`Id_Autor`) REFERENCES `autor` (`Id_Autor`),
  ADD CONSTRAINT `Fk_Id_Livro` FOREIGN KEY (`Id_Livro`) REFERENCES `livro` (`Id_livro`);

--
-- Limitadores para a tabela `itens_da_venda`
--
ALTER TABLE `itens_da_venda`
  ADD CONSTRAINT `Fk_Id_Livro_Venda` FOREIGN KEY (`Id_Livro`) REFERENCES `livro` (`Id_livro`),
  ADD CONSTRAINT `Fk_Id_Venda` FOREIGN KEY (`Id_Venda`) REFERENCES `venda` (`Id_Venda`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `Fk_Id_Genero` FOREIGN KEY (`Id_Genero`) REFERENCES `genero` (`Id_Genero`),
  ADD CONSTRAINT `Fk_Id_editora` FOREIGN KEY (`Id_Editora`) REFERENCES `editora` (`Id_Editora`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `Fk_Id-_Cliente` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id_Cliente`),
  ADD CONSTRAINT `Fk_Id_Cliente` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id_Cliente`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Extraindo dados da tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"on\",\"angular_direct\":\"angular\",\"full_screen\":\"off\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Extraindo dados da tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'teste', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"biblioteca\",\"gaikko\",\"phpmyadmin\",\"test\",\"teste1\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'Biblioteca', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"biblioteca\",\"gaikko\",\"phpmyadmin\",\"test\",\"teste1\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('biblioteca', 2, 'DER_Biblioteca');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"senacoin\",\"table\":\"itens\"},{\"db\":\"senacoin\",\"table\":\"vw_usuarios\"},{\"db\":\"senacoin\",\"table\":\"vw_unidades\"},{\"db\":\"senacoin\",\"table\":\"vw_subcategoria\"},{\"db\":\"senacoin\",\"table\":\"vw_perfil\"},{\"db\":\"senacoin\",\"table\":\"vw_categoria\"},{\"db\":\"senacoin\",\"table\":\"vw_area\"},{\"db\":\"senacoin\",\"table\":\"usuario\"},{\"db\":\"senacoin\",\"table\":\"unidades\"},{\"db\":\"senacoin\",\"table\":\"subcategoria\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Extraindo dados da tabela `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('biblioteca', 'autor', 2, 850, 70),
('biblioteca', 'cliente', 2, 150, 430),
('biblioteca', 'editora', 2, 120, 590),
('biblioteca', 'escreve', 2, 620, 250),
('biblioteca', 'genero', 2, 647, 504),
('biblioteca', 'itens_da_venda', 2, 480, 70),
('biblioteca', 'livro', 2, 420, 470),
('biblioteca', 'venda', 2, 180, 60),
('biblioteca', 'vw_cliente_por_editora', 2, 230, 740),
('biblioteca', 'vw_estoque_por_autor', 2, 1330, 100),
('biblioteca', 'vw_genero_por_cliente', 2, 510, 760),
('biblioteca', 'vw_livro_por_autor', 2, 790, 780),
('biblioteca', 'vw_livro_por_estoque_zerado', 2, 1300, 580),
('biblioteca', 'vw_livro_por_maxpreco', 2, 1330, 220),
('biblioteca', 'vw_livro_por_minpreco', 2, 1340, 470),
('biblioteca', 'vw_qtde_livro_por_editora', 2, 1320, 380),
('biblioteca', 'vw_qtde_por_autor', 2, 1350, 320),
('biblioteca', 'vw_qtde_vendida_por_autor', 2, 1040, 740),
('biblioteca', 'vw_qtdemax_por_livro', 2, 1340, 10),
('biblioteca', 'vw_titulo_genero_autor', 2, 1340, 680);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('senacoin', 'area', 'ar_titulo'),
('senacoin', 'categoria', 'cat_titulo'),
('senacoin', 'itens', 'it_titulo'),
('senacoin', 'perfil', 'nome_perfil'),
('senacoin', 'subcategoria', 'sc_titulo'),
('senacoin', 'unidades', 'uni_descricao'),
('senacoin', 'usuario', 'cpf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'biblioteca', 'livro', '{\"sorted_col\":\"`livro`.`Id_Editora` ASC\"}', '2022-01-26 14:56:08'),
('root', 'biblioteca', 'venda', '{\"sorted_col\":\"`venda`.`Data`  ASC\"}', '2022-01-26 14:57:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-05-20 15:05:43', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"NavigationWidth\":316,\"Console\\/Height\":238.9864}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `senacoin`
--
CREATE DATABASE IF NOT EXISTS `senacoin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `senacoin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `ar_titulo` varchar(50) NOT NULL,
  `ar_obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`id_area`, `fk_id_status`, `fk_id_unidade`, `ar_titulo`, `ar_obs`) VALUES
(1, 1, 1, 'Beleza', '1'),
(2, 1, 1, 'Saude', '1'),
(3, 1, 1, 'Gastronomia', '1'),
(4, 1, 1, 'Turismo', '1'),
(5, 1, 1, 'Comércio', '1'),
(6, 1, 1, 'Gestão', '1'),
(7, 1, 1, 'TI', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `cat_titulo` varchar(50) NOT NULL,
  `cat_observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `fk_id_status`, `fk_id_unidade`, `cat_titulo`, `cat_observacao`) VALUES
(1, 1, 1, 'Produtos', NULL),
(2, 1, 1, 'Serviços', NULL),
(3, 1, 1, 'Eventos', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `id_item` int(11) NOT NULL,
  `fk_id_area` int(11) NOT NULL,
  `fk_id_categoria` int(11) NOT NULL,
  `fk_id_subcat` int(11) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `it_titulo` varchar(50) NOT NULL,
  `it_descricao` text NOT NULL,
  `it_pontos` float DEFAULT NULL,
  `it_imagem` blob DEFAULT NULL,
  `fk_it_qtde` int(11) NOT NULL,
  `it_dt_inicio` datetime DEFAULT current_timestamp(),
  `it_dt_fim` datetime DEFAULT current_timestamp(),
  `it_observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`id_item`, `fk_id_area`, `fk_id_categoria`, `fk_id_subcat`, `fk_id_status`, `fk_id_unidade`, `it_titulo`, `it_descricao`, `it_pontos`, `it_imagem`, `fk_it_qtde`, `it_dt_inicio`, `it_dt_fim`, `it_observacao`) VALUES
(1, 1, 1, 2, 1, 1, 'Camiseta Dia dos Namorados Salão de Beleza', '.', NULL, NULL, 1, '2022-05-20 11:05:43', '2022-05-20 11:05:43', NULL),
(2, 3, 1, 1, 1, 1, 'Garrafa promocional Gastronomia', '.', NULL, NULL, 2, '2022-05-20 11:05:43', '2022-05-20 11:05:43', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `nome_perfil` varchar(20) NOT NULL,
  `cad_perfil` tinyint(1) NOT NULL,
  `cad_area` tinyint(1) NOT NULL,
  `cad_cat` tinyint(1) NOT NULL,
  `cad_subcat` tinyint(1) NOT NULL,
  `cad_usu` tinyint(1) NOT NULL,
  `cad_prom` tinyint(1) NOT NULL,
  `cad_unidades` tinyint(1) NOT NULL,
  `cad_manter_itens` tinyint(1) NOT NULL,
  `gerar_relatorios` tinyint(1) NOT NULL,
  `acesso_adm` tinyint(1) NOT NULL,
  `gerenciar_usu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `fk_id_status`, `fk_id_unidade`, `nome_perfil`, `cad_perfil`, `cad_area`, `cad_cat`, `cad_subcat`, `cad_usu`, `cad_prom`, `cad_unidades`, `cad_manter_itens`, `gerar_relatorios`, `acesso_adm`, `gerenciar_usu`) VALUES
(1, 1, 1, 'Administrador', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 'Suporte', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 1, 1, 'Colaborador', 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `st_nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`id_status`, `st_nome`) VALUES
(1, 'Ativado'),
(4, 'Em Analise'),
(2, 'Inativo'),
(3, 'Suspenso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id_subcat` int(11) NOT NULL,
  `sc_titulo` varchar(50) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `sc_observacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `subcategoria`
--

INSERT INTO `subcategoria` (`id_subcat`, `sc_titulo`, `fk_id_status`, `fk_id_unidade`, `sc_observacao`) VALUES
(1, 'Squeezie 410ml Marca Senac MS', 1, 1, ''),
(2, 'Camiseta Promocional Dia dos Namorados', 1, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

CREATE TABLE `unidades` (
  `id_unidade` int(11) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `uni_descricao` varchar(50) NOT NULL,
  `uni_cidade` varchar(255) NOT NULL,
  `uni_uf` varchar(2) NOT NULL,
  `uni_endereco` varchar(255) NOT NULL,
  `uni_telefone` varchar(14) DEFAULT NULL,
  `uni_resposavel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`id_unidade`, `fk_id_status`, `uni_descricao`, `uni_cidade`, `uni_uf`, `uni_endereco`, `uni_telefone`, `uni_resposavel`) VALUES
(1, 1, 'HUB ACADEMY', 'Campo Grande', 'MS', 'Rua 26, de Agosto', NULL, 'Jordana'),
(2, 1, 'Unidade de Corumba', 'Corumbá', 'MS', 'R Tal', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpf` varchar(11) NOT NULL,
  `usu_matricula` varchar(20) NOT NULL,
  `fk_id_status` int(11) NOT NULL,
  `fk_id_perfil` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `usu_nome` varchar(255) NOT NULL,
  `usu_apelido` varchar(25) DEFAULT NULL,
  `usu_email` varchar(255) NOT NULL,
  `usu_senha` varchar(255) NOT NULL,
  `usu_telefone` varchar(20) DEFAULT NULL,
  `usu_dt_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `usu_matricula`, `fk_id_status`, `fk_id_perfil`, `fk_id_unidade`, `usu_nome`, `usu_apelido`, `usu_email`, `usu_senha`, `usu_telefone`, `usu_dt_nascimento`) VALUES
('00000000000', '00000000000', 1, 1, 1, 'Administrador de Sistemas', 'Adm', 'adm@ms.senac.br', '1234567890', NULL, '1990-01-01'),
('00000000001', '00000000001', 1, 2, 1, 'Suporte de Sistemas', 'Help Desk', 'helpdesk@ms.senac.br', '0987654321', NULL, '1999-01-01'),
('00000000002', '00000000002', 1, 3, 1, 'Colaborador', 'Usuário', 'usuario@ms.senac.br', '0147258369', NULL, '1990-01-01');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_area`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_area` (
`ID` int(11)
,`Titulo` varchar(50)
,`Status` varchar(25)
,`Unidade` varchar(50)
,`Observação` text
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_categoria`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_categoria` (
`ID` int(11)
,`Status` varchar(25)
,`Titulo` varchar(50)
,`Unidade` varchar(50)
,`Observações` text
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_perfil`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_perfil` (
`ID` int(11)
,`Perfil` varchar(20)
,`Administrador` tinyint(1)
,`Unidade` varchar(50)
,`Status` varchar(25)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_subcategoria`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_subcategoria` (
`ID` int(11)
,`Título` varchar(50)
,`Unidade` varchar(50)
,`Status` varchar(25)
,`Observação` text
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_unidades`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_unidades` (
`ID` int(11)
,`Unidade` varchar(50)
,`Cidade` varchar(255)
,`UF` varchar(2)
,`Endereço` varchar(255)
,`Telefone` varchar(14)
,`Responsável` varchar(50)
,`Status` varchar(25)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `vw_usuarios`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `vw_usuarios` (
`CPF` varchar(11)
,`Matrícula` varchar(20)
,`Nome` varchar(255)
,`Apelido` varchar(25)
,`E-mail` varchar(255)
,`Telefone` varchar(20)
,`Perfil` varchar(20)
,`Unidade` varchar(50)
,`Status` varchar(25)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_area`
--
DROP TABLE IF EXISTS `vw_area`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_area`  AS SELECT `a`.`id_area` AS `ID`, `a`.`ar_titulo` AS `Titulo`, `st`.`st_nome` AS `Status`, `uni`.`uni_descricao` AS `Unidade`, `a`.`ar_obs` AS `Observação` FROM ((`area` `a` join `status` `st` on(`st`.`id_status` = `a`.`fk_id_status`)) join `unidades` `uni` on(`uni`.`id_unidade` = `a`.`fk_id_unidade`)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_categoria`
--
DROP TABLE IF EXISTS `vw_categoria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_categoria`  AS SELECT `cat`.`id_categoria` AS `ID`, `st`.`st_nome` AS `Status`, `cat`.`cat_titulo` AS `Titulo`, `uni`.`uni_descricao` AS `Unidade`, `cat`.`cat_observacao` AS `Observações` FROM ((`categoria` `cat` join `unidades` `uni` on(`uni`.`id_unidade` = `cat`.`fk_id_unidade`)) join `status` `st` on(`st`.`id_status` = `cat`.`fk_id_status`)) ORDER BY `cat`.`cat_titulo` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_perfil`
--
DROP TABLE IF EXISTS `vw_perfil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_perfil`  AS SELECT `p`.`id_perfil` AS `ID`, `p`.`nome_perfil` AS `Perfil`, `p`.`acesso_adm` AS `Administrador`, `u`.`uni_descricao` AS `Unidade`, `st`.`st_nome` AS `Status` FROM ((`perfil` `p` join `unidades` `u` on(`p`.`fk_id_unidade` = `u`.`id_unidade`)) join `status` `st` on(`p`.`fk_id_status` = `st`.`id_status`)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_subcategoria`
--
DROP TABLE IF EXISTS `vw_subcategoria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_subcategoria`  AS SELECT `sc`.`id_subcat` AS `ID`, `sc`.`sc_titulo` AS `Título`, `u`.`uni_descricao` AS `Unidade`, `st`.`st_nome` AS `Status`, `sc`.`sc_observacao` AS `Observação` FROM ((`subcategoria` `sc` join `unidades` `u` on(`sc`.`fk_id_unidade` = `u`.`id_unidade`)) join `status` `st` on(`sc`.`fk_id_status` = `st`.`id_status`)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_unidades`
--
DROP TABLE IF EXISTS `vw_unidades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_unidades`  AS SELECT `u`.`id_unidade` AS `ID`, `u`.`uni_descricao` AS `Unidade`, `u`.`uni_cidade` AS `Cidade`, `u`.`uni_uf` AS `UF`, `u`.`uni_endereco` AS `Endereço`, `u`.`uni_telefone` AS `Telefone`, `u`.`uni_resposavel` AS `Responsável`, `st`.`st_nome` AS `Status` FROM (`unidades` `u` join `status` `st` on(`u`.`fk_id_status` = `st`.`id_status`)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista `vw_usuarios`
--
DROP TABLE IF EXISTS `vw_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_usuarios`  AS SELECT `usu`.`cpf` AS `CPF`, `usu`.`usu_matricula` AS `Matrícula`, `usu`.`usu_nome` AS `Nome`, `usu`.`usu_apelido` AS `Apelido`, `usu`.`usu_email` AS `E-mail`, `usu`.`usu_telefone` AS `Telefone`, `p`.`nome_perfil` AS `Perfil`, `u`.`uni_descricao` AS `Unidade`, `st`.`st_nome` AS `Status` FROM (((`usuario` `usu` join `perfil` `p` on(`p`.`id_perfil` = `usu`.`fk_id_perfil`)) join `unidades` `u` on(`u`.`id_unidade` = `usu`.`fk_id_unidade`)) join `status` `st` on(`st`.`id_status` = `usu`.`fk_id_status`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`),
  ADD UNIQUE KEY `UQ_titulo_area` (`ar_titulo`),
  ADD KEY `fk_id_status_area` (`fk_id_status`),
  ADD KEY `fk_id_unidade_area` (`fk_id_unidade`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `UQ_titulo_cat` (`cat_titulo`),
  ADD KEY `fk_id_status_cat` (`fk_id_status`),
  ADD KEY `fk_id_unidade_cat` (`fk_id_unidade`);

--
-- Índices para tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `fk_id_area_item` (`fk_id_area`),
  ADD KEY `fk_id_categoria_item` (`fk_id_categoria`),
  ADD KEY `fk_id_status_item` (`fk_id_status`),
  ADD KEY `fk_id_subcat_item` (`fk_id_subcat`),
  ADD KEY `fk_id_unidade_item` (`fk_id_unidade`);

--
-- Índices para tabela `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`),
  ADD UNIQUE KEY `UQ_nome_perfil` (`nome_perfil`),
  ADD KEY `fk_id_status_perfil` (`fk_id_status`) USING BTREE,
  ADD KEY `fk_id_unidade_perfil` (`fk_id_unidade`) USING BTREE;

--
-- Índices para tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`),
  ADD UNIQUE KEY `UQ_nome_status` (`st_nome`);

--
-- Índices para tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id_subcat`),
  ADD UNIQUE KEY `UQ_titulo_subcat` (`sc_titulo`),
  ADD KEY `fk_id_status_sc` (`fk_id_status`),
  ADD KEY `fk_id_unidade_sc` (`fk_id_unidade`);

--
-- Índices para tabela `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id_unidade`),
  ADD KEY `fk_id_status_unidades` (`fk_id_status`) USING BTREE;

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `UQ_matricula_usuario` (`usu_matricula`),
  ADD KEY `fk_id_status_usuario` (`fk_id_status`),
  ADD KEY `fk_id_unidade_usuario` (`fk_id_unidade`),
  ADD KEY `fk_id_perfil_usuario` (`fk_id_perfil`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id_subcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id_unidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `fk_id_status_area` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_id_unidade_area` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades` (`id_unidade`);

--
-- Limitadores para a tabela `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `fk_id_status_cat` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_id_unidade_cat` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades` (`id_unidade`);

--
-- Limitadores para a tabela `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `fk_id_area_item` FOREIGN KEY (`fk_id_area`) REFERENCES `area` (`id_area`),
  ADD CONSTRAINT `fk_id_categoria_item` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `fk_id_status_item` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_id_subcat_item` FOREIGN KEY (`fk_id_subcat`) REFERENCES `subcategoria` (`id_subcat`),
  ADD CONSTRAINT `fk_id_unidade_item` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades` (`id_unidade`);

--
-- Limitadores para a tabela `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `fk_id_perfil` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_id_unidade_perfil` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades` (`id_unidade`);

--
-- Limitadores para a tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `fk_id_status_sc` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_id_unidade_sc` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades` (`id_unidade`);

--
-- Limitadores para a tabela `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `fk_id_status` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_id_perfil_usuario` FOREIGN KEY (`fk_id_perfil`) REFERENCES `perfil` (`id_perfil`),
  ADD CONSTRAINT `fk_id_status_usuario` FOREIGN KEY (`fk_id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_id_unidade_usuario` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades` (`id_unidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
