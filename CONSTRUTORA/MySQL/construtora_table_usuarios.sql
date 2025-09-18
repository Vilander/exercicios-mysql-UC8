
-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `id_departamentos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `id_departamentos`) VALUES
(1, 'Ana Silva', 1),
(2, 'Bruno Costa', 2),
(3, 'Carla Souza', 1),
(4, 'Diego Martins', 3),
(5, 'Eduarda Lima', 2),
(6, 'Felipe Rocha', 3),
(7, 'Gabriela Pereira', 1),
(8, 'Henrique Almeida', 2),
(9, 'Isabela Fernandes', 3),
(10, 'João Carvalho', 1);
