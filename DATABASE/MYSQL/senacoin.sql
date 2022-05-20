-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2022 às 17:26
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
-- Banco de dados: `senacoin`
--

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
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `fk_id_item` int(11) NOT NULL,
  `fk_cpf` varchar(11) NOT NULL,
  `it_quantidade` int(11) NOT NULL,
  `est_dt_cad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`fk_id_item`),
  ADD KEY `fk_cpf_estoque` (`fk_cpf`);

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
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `fk_id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `fk_cpf_estoque` FOREIGN KEY (`fk_cpf`) REFERENCES `usuario` (`cpf`),
  ADD CONSTRAINT `fk_id_item_estoque` FOREIGN KEY (`fk_id_item`) REFERENCES `itens` (`id_item`);

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
