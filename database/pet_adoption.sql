-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18-Nov-2022 às 23:10
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pet_adoption`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_adotantes`
--

CREATE TABLE `tbl_adotantes` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL,
  `genero` char(1) NOT NULL,
  `data_nascimento` date NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `documento` varchar(11) NOT NULL,
  `telefone` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_adotantes`
--

INSERT INTO `tbl_adotantes` (`id`, `nome`, `genero`, `data_nascimento`, `logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `pais`, `documento`, `telefone`, `email`) VALUES
(1, 'Yussef Casseb', 'M', '2000-04-12', 'Algum lugar', '734', 'Algum complemento', 'Algum bairro', 'Aluma cidade', 'Algum estado', 'Algum pais', '99999999999', 999999999, 'yussef@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_animais`
--

CREATE TABLE `tbl_animais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(10) UNSIGNED NOT NULL,
  `genero` char(1) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `porte` varchar(7) NOT NULL,
  `descricao` text NOT NULL,
  `cidade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_animais`
--

INSERT INTO `tbl_animais` (`id`, `nome`, `idade`, `genero`, `tipo`, `porte`, `descricao`, `cidade`) VALUES
(1, 'Bóris', 4, 'M', 'Cachorro', 'Grande', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget lacus faucibus, egestas lacus at, consectetur sem. Integer scelerisque arcu eget ultrices fermentum. Aenean id tortor nibh. Nam quam erat, sollicitudin eget urna at, fermentum blandit nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam accumsan, massa a porta feugiat, nisl lorem varius ligula, viverra ultrices velit ante nec enim. Aenean finibus venenatis vulputate. Vestibulum aliquet eleifend porttitor. Proin efficitur, mauris ac aliquam sodales, orci sem tempor tellus, non sodales nisi arcu et tortor. Curabitur quis condimentum libero.', 'São Paulo - SP'),
(2, 'Merlin', 2, 'F', 'Gato', 'Pequeno', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget lacus faucibus, egestas lacus at, consectetur sem. Integer scelerisque arcu eget ultrices fermentum. Aenean id tortor nibh. Nam quam erat, sollicitudin eget urna at, fermentum blandit nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam accumsan, massa a porta feugiat, nisl lorem varius ligula, viverra ultrices velit ante nec enim. Aenean finibus venenatis vulputate. Vestibulum aliquet eleifend porttitor. Proin efficitur, mauris ac aliquam sodales, orci sem tempor tellus, non sodales nisi arcu et tortor. Curabitur quis condimentum libero.', 'Rio de Janeiro - RJ'),
(3, 'Floquinhos', 3, 'M', 'Cachorro', 'Pequeno', 'Sed ac justo semper, egestas risus molestie, feugiat lectus. Nam ut nulla fermentum, suscipit nisi ac, maximus orci. Pellentesque et tortor vitae dui porta ultrices consequat ac tellus. Aliquam pellentesque dolor vel luctus finibus. Proin vel sapien sed arcu porttitor mattis quis a urna. Fusce sodales eu nisi eget placerat. Cras finibus tempor faucibus. Nunc maximus ornare metus eu hendrerit. Sed faucibus sem at gravida pulvinar. Vestibulum vulputate quis dolor et vulputate. Morbi vel sem leo. Donec ac aliquet elit. Cras sed dolor vel elit laoreet pellentesque non at urna.', 'Guarulhos - SP'),
(4, 'Diego', 6, 'M', 'Gato', 'Pequeno', 'Aenean rhoncus sagittis pretium. Suspendisse ac pretium ligula. Phasellus quis nunc convallis, scelerisque est id, fringilla lacus. Cras nec libero commodo, rhoncus lectus eget, varius nisl. Nullam quis mi convallis, suscipit nunc nec, pretium quam. Aenean hendrerit in elit sit amet convallis. Etiam justo diam, pellentesque ac nunc sit amet, feugiat fringilla nisl. Integer lorem neque, luctus vel congue sed, convallis ac ipsum. Vivamus tincidunt efficitur mattis. Praesent luctus augue vel augue auctor, eget pharetra velit interdum. Vestibulum eleifend ligula vitae egestas dapibus. Nunc lacinia arcu metus, a suscipit diam pretium vel. Vestibulum quis ante luctus, hendrerit lorem non, euismod odio. Etiam nec nulla non ligula interdum elementum non at arcu. Curabitur at vehicula lacus, vitae laoreet purus.', 'São Paulo - SP'),
(5, 'Luiza', 8, 'F', 'Gato', 'Pequeno', 'Aliquam facilisis porta tellus, sit amet posuere diam aliquam a. Duis maximus purus eget enim sagittis venenatis. Nullam id eros ac lectus molestie pharetra ac eu tortor. Praesent iaculis pellentesque purus in auctor. Phasellus a justo nec diam maximus malesuada sed eget ligula. Donec ac tristique est. Nunc congue odio sit amet aliquet sollicitudin. Nam congue suscipit orci, nec mattis augue mattis sit amet. Maecenas vel risus tellus.', 'Rio de Janeiro - RJ'),
(6, 'Bruna', 8, 'F', 'Gato', 'Pequeno', 'Proin quis iaculis nisl. Fusce aliquet venenatis nisi, eu fringilla ipsum venenatis in. Sed odio dolor, pharetra ut tempus a, placerat quis dolor. Suspendisse potenti. In eros sapien, euismod quis faucibus sed, sollicitudin ut sem. Aliquam condimentum, lacus ac viverra dapibus, arcu erat volutpat sem, sit amet efficitur nunc metus et elit. Aenean accumsan pellentesque ipsum eu pretium. Nunc orci justo, commodo sed ipsum sit amet, blandit consectetur lectus.', 'São Paulo - SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_animais_adotados`
--

CREATE TABLE `tbl_animais_adotados` (
  `animal_id` int(10) UNSIGNED NOT NULL,
  `adotante_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_animais_imagens`
--

CREATE TABLE `tbl_animais_imagens` (
  `id` int(10) UNSIGNED NOT NULL,
  `animal_id` int(10) UNSIGNED NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_animais_imagens`
--

INSERT INTO `tbl_animais_imagens` (`id`, `animal_id`, `img_url`) VALUES
(1, 1, 'https://www.amigonaosecompra.com.br/unsafe/460x440/0d0d7fe5-b177-4b74-98ba-1d3293885c84/89783254-5be4-4b33-863b-d8a63c24cfa1/89783254-5be4-4b33-863b-d8a63c24cfa1.jpeg?v=63819961411'),
(2, 2, 'https://www.amigonaosecompra.com.br/unsafe/460x440/474e3b6a-f091-4be5-839b-d887f36e3158/e7cdc469-c648-460e-93aa-f9b72ec59ff6/e7cdc469-c648-460e-93aa-f9b72ec59ff6.jpg?v=63819959286'),
(3, 3, 'https://www.amigonaosecompra.com.br/unsafe/460x440/65e3a96d-e3cd-4431-90a2-b34140bef53f/64f1938b-a722-4f66-bad6-fbbb499672b2/64f1938b-a722-4f66-bad6-fbbb499672b2.jpeg?v=63819955681'),
(4, 4, 'https://www.amigonaosecompra.com.br/unsafe/460x440/879dcc7a-6bf2-4bc9-8bcc-14aa468ff666/e1ce6fa5-7b2f-4ec2-8f11-6e826c78444a/e1ce6fa5-7b2f-4ec2-8f11-6e826c78444a.jpeg?v=63819950292'),
(5, 5, 'https://www.amigonaosecompra.com.br/unsafe/460x440/879dcc7a-6bf2-4bc9-8bcc-14aa468ff666/afdbd453-6124-43eb-bd4a-4c55092bd9ea/afdbd453-6124-43eb-bd4a-4c55092bd9ea.jpeg?v=63819950131'),
(6, 6, 'https://www.amigonaosecompra.com.br/unsafe/460x440/879dcc7a-6bf2-4bc9-8bcc-14aa468ff666/079ef9e3-9822-41b2-92a1-ae7abdeba36d/079ef9e3-9822-41b2-92a1-ae7abdeba36d.jpeg?v=63819949997');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_animais_vacinas`
--

CREATE TABLE `tbl_animais_vacinas` (
  `id` int(10) UNSIGNED NOT NULL,
  `animal_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_interessados`
--

CREATE TABLE `tbl_interessados` (
  `id` int(10) UNSIGNED NOT NULL,
  `animal_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_interessados`
--

INSERT INTO `tbl_interessados` (`id`, `animal_id`, `nome`, `email`, `cidade`) VALUES
(1, 2, 'Yussef Casseb', 'yussef.casseb@gmail.com', 'Rio Claro - SP'),
(2, 4, 'Yussef Casseb', 'yussef.casseb@gmail.com', 'Rio Claro - SP');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_adotantes`
--
ALTER TABLE `tbl_adotantes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tbl_animais`
--
ALTER TABLE `tbl_animais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tbl_animais_adotados`
--
ALTER TABLE `tbl_animais_adotados`
  ADD PRIMARY KEY (`animal_id`,`adotante_id`),
  ADD KEY `fk_adotado_adotante_id` (`adotante_id`);

--
-- Índices para tabela `tbl_animais_imagens`
--
ALTER TABLE `tbl_animais_imagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_imagem_animal_id` (`animal_id`);

--
-- Índices para tabela `tbl_animais_vacinas`
--
ALTER TABLE `tbl_animais_vacinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vacina_animal_id` (`animal_id`);

--
-- Índices para tabela `tbl_interessados`
--
ALTER TABLE `tbl_interessados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_interessado_animal_id` (`animal_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_adotantes`
--
ALTER TABLE `tbl_adotantes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbl_animais`
--
ALTER TABLE `tbl_animais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_animais_imagens`
--
ALTER TABLE `tbl_animais_imagens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_animais_vacinas`
--
ALTER TABLE `tbl_animais_vacinas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_interessados`
--
ALTER TABLE `tbl_interessados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbl_animais_adotados`
--
ALTER TABLE `tbl_animais_adotados`
  ADD CONSTRAINT `fk_adotado_adotante_id` FOREIGN KEY (`adotante_id`) REFERENCES `tbl_adotantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_adotado_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `tbl_animais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_animais_imagens`
--
ALTER TABLE `tbl_animais_imagens`
  ADD CONSTRAINT `fk_imagem_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `tbl_animais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_animais_vacinas`
--
ALTER TABLE `tbl_animais_vacinas`
  ADD CONSTRAINT `fk_vacina_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `tbl_animais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_interessados`
--
ALTER TABLE `tbl_interessados`
  ADD CONSTRAINT `fk_interessado_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `tbl_animais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
