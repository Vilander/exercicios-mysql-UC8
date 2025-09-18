
-- --------------------------------------------------------

--
-- Estrutura para tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamentos` int(11) NOT NULL,
  `setor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `departamentos`
--

INSERT INTO `departamentos` (`id_departamentos`, `setor`) VALUES
(1, 'Manutenção'),
(2, 'Eletricista'),
(3, 'Hidraulica'),
(4, 'Engenharia'),
(5, 'Arquitetura'),
(6, 'Administração');
