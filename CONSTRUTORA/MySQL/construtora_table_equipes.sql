
-- --------------------------------------------------------

--
-- Estrutura para tabela `equipes`
--

CREATE TABLE `equipes` (
  `id_equipes` int(11) NOT NULL,
  `nome_equipe` varchar(100) DEFAULT NULL,
  `id_usuarios` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `equipes`
--

INSERT INTO `equipes` (`id_equipes`, `nome_equipe`, `id_usuarios`) VALUES
(2, 'ALFA01', 1),
(3, 'ALFA01', 2),
(4, 'BETA02', 3);
