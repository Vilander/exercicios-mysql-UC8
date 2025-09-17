
-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `id_projeto` int(11) NOT NULL,
  `id_kits` int(11) DEFAULT NULL,
  `id_veiculos` int(11) DEFAULT NULL,
  `id_equipes` int(11) DEFAULT NULL,
  `id_responsaveis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
