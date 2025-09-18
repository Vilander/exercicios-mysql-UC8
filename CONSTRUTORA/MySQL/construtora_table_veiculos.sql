
-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id_veiculos` int(11) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `id_usuarios` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id_veiculos`, `placa`, `modelo`, `id_usuarios`) VALUES
(1, 'ABC-1234', 'Toyota Corolla', 1),
(2, 'DEF-5678', 'Honda Civic', 2),
(3, 'GHI-9012', 'Ford Ka', 3),
(4, 'JKL-3456', 'Chevrolet Onix', 4),
(5, 'MNO-7890', 'Hyundai HB20', 5),
(6, 'PQR-2345', 'Volkswagen Gol', 6),
(7, 'STU-6789', 'Renault Sandero', 7),
(8, 'VWX-0123', 'Nissan Versa', 8),
(9, 'YZA-4567', 'Fiat Argo', 9),
(10, 'BCD-8901', 'Jeep Renegade', 10);
