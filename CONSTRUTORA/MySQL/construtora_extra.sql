
--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamentos`);

--
-- Índices de tabela `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipes`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Índices de tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  ADD PRIMARY KEY (`id_ferramentas`);

--
-- Índices de tabela `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`id_kits`),
  ADD KEY `id_ferramentas` (`id_ferramentas`);

--
-- Índices de tabela `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`id_projeto`),
  ADD KEY `id_kits` (`id_kits`),
  ADD KEY `fk_projetos_veiculos` (`id_veiculos`),
  ADD KEY `fk_projetos_equipes` (`id_equipes`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `id_departamentos` (`id_departamentos`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id_veiculos`),
  ADD KEY `fk_veiculos_usuarios` (`id_usuarios`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  MODIFY `id_ferramentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `kits`
--
ALTER TABLE `kits`
  MODIFY `id_kits` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `projetos`
--
ALTER TABLE `projetos`
  MODIFY `id_projeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id_veiculos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `equipes`
--
ALTER TABLE `equipes`
  ADD CONSTRAINT `equipes_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Restrições para tabelas `kits`
--
ALTER TABLE `kits`
  ADD CONSTRAINT `kits_ibfk_1` FOREIGN KEY (`id_ferramentas`) REFERENCES `ferramentas` (`id_ferramentas`);

--
-- Restrições para tabelas `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `fk_projetos_equipes` FOREIGN KEY (`id_equipes`) REFERENCES `equipes` (`id_equipes`),
  ADD CONSTRAINT `fk_projetos_veiculos` FOREIGN KEY (`id_veiculos`) REFERENCES `veiculos` (`id_veiculos`),
  ADD CONSTRAINT `projetos_ibfk_1` FOREIGN KEY (`id_veiculos`) REFERENCES `veiculos` (`id_veiculos`),
  ADD CONSTRAINT `projetos_ibfk_2` FOREIGN KEY (`id_equipes`) REFERENCES `equipes` (`id_equipes`),
  ADD CONSTRAINT `projetos_ibfk_4` FOREIGN KEY (`id_kits`) REFERENCES `kits` (`id_kits`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_departamentos`) REFERENCES `departamentos` (`id_departamentos`);

--
-- Restrições para tabelas `veiculos`
--
ALTER TABLE `veiculos`
  ADD CONSTRAINT `fk_veiculos_usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);
