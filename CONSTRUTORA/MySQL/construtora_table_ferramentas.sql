
-- --------------------------------------------------------

--
-- Estrutura para tabela `ferramentas`
--

CREATE TABLE `ferramentas` (
  `id_ferramentas` int(11) NOT NULL,
  `nome_ferramentas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `ferramentas`
--

INSERT INTO `ferramentas` (`id_ferramentas`, `nome_ferramentas`) VALUES
(1, 'Martelo'),
(2, 'Alicate'),
(3, 'Chave de fenda'),
(4, 'Chave Philips'),
(5, 'Trena'),
(6, 'Nível de bolha'),
(7, 'Esquadro'),
(8, 'Serrote'),
(9, 'Arco de serra'),
(10, 'Estilete'),
(11, 'Marreta'),
(12, 'Talhadeira'),
(13, 'Chave inglesa'),
(14, 'Chave de boca'),
(15, 'Chave combinada'),
(16, 'Chave Allen'),
(17, 'Broca'),
(18, 'Furadeira'),
(19, 'Parafusadeira'),
(20, 'Lixadeira'),
(21, 'Esmerilhadeira'),
(22, 'Plaina manual'),
(23, 'Plaina elétrica'),
(24, 'Torno de bancada'),
(25, 'Grampo tipo C'),
(26, 'Grampo sargento'),
(27, 'Formão'),
(28, 'Serra tico-tico'),
(29, 'Serra circular'),
(30, 'Serra mármore'),
(31, 'Pá'),
(32, 'Enxada'),
(33, 'Picareta'),
(34, 'Carrinho de mão'),
(35, 'Colher de pedreiro'),
(36, 'Desempenadeira'),
(37, 'Rolo de pintura'),
(38, 'Pincel'),
(39, 'Espátula'),
(40, 'Misturador de argamassa'),
(41, 'Betoneira'),
(42, 'Escada'),
(43, 'Capacete de segurança'),
(44, 'Luvas de proteção'),
(45, 'Óculos de proteção'),
(46, 'Máscara de solda'),
(47, 'Trinco de impacto'),
(48, 'Nível a laser'),
(49, 'Detector de metais'),
(50, 'Cinto de ferramentas');
