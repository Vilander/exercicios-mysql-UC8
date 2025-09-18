
-- --------------------------------------------------------

--
-- Estrutura para tabela `kits`
--

CREATE TABLE `kits` (
  `id_kits` int(11) NOT NULL,
  `codigo_kit` varchar(50) DEFAULT NULL,
  `id_ferramentas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `kits`
--

INSERT INTO `kits` (`id_kits`, `codigo_kit`, `id_ferramentas`) VALUES
(1, 'KF0001', 1),
(2, 'KF0001', 2),
(3, 'KF0001', 3),
(4, 'KF0002', 1),
(5, 'KF0002', 3),
(6, 'KF0002', 6);
