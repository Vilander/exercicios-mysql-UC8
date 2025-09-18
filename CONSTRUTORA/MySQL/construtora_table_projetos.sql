
-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `id_projeto` int(11) NOT NULL,
  `nome_projeto` varchar(100) DEFAULT NULL,
  `id_kits` int(11) DEFAULT NULL,
  `id_veiculos` int(11) DEFAULT NULL,
  `id_equipes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `projetos`
--

INSERT INTO `projetos` (`id_projeto`, `nome_projeto`, `id_kits`, `id_veiculos`, `id_equipes`) VALUES
(5, 'Estação Luz', 1, 2, 2),
(6, 'Estação Morumbi', 2, 1, 3),
(7, 'Condominio Éden', 2, 2, 2);
