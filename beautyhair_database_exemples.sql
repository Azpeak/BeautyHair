-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 25 mars 2020 à 18:46
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `beautyhair`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointments`
--

CREATE TABLE `appointments` (
  `ID` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `ID_hairdresser` int(11) NOT NULL,
  `price_paid` int(11) NOT NULL,
  `ID_speciality` int(11) NOT NULL,
  `ID_salon` int(11) NOT NULL,
  `appointment_start` datetime NOT NULL,
  `appointment_end` datetime NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `appointments`
--

INSERT INTO `appointments` (`ID`, `ID_user`, `ID_hairdresser`, `price_paid`, `ID_speciality`, `ID_salon`, `appointment_start`, `appointment_end`, `title`) VALUES
(47, 244, 249, 20, 31, 99, '2020-03-26 15:00:00', '2020-03-26 15:30:00', 'Salon Salon BeautyStyle : Rendez-vous pour Neymar Jean pour une spécialité Coupe chauve avec le coiffeur Tar Guy'),
(48, 244, 247, 20, 31, 99, '2020-03-27 10:00:00', '2020-03-27 10:30:00', 'Salon Salon BeautyStyle : Rendez-vous pour Neymar Jean pour une spécialité Coupe chauve avec le coiffeur Voyance Claire'),
(49, 244, 248, 25, 35, 99, '2020-03-28 10:00:00', '2020-03-28 10:45:00', 'Salon Salon BeautyStyle : Rendez-vous pour Neymar Jean pour une spécialité Shampoing et coupe avec le coiffeur Menvussa Gerard'),
(50, 244, 249, 20, 31, 99, '2020-04-01 09:00:00', '2020-04-01 09:30:00', 'Salon Salon BeautyStyle : Rendez-vous pour Neymar Jean pour une spécialité Coupe chauve avec le coiffeur Tar Guy'),
(51, 243, 250, 20, 31, 98, '2020-04-04 14:58:00', '2020-04-04 15:28:00', 'Salon Salon Robert : Rendez-vous pour gjirehihzigh Gregory pour une spécialité Coupe chauve avec le coiffeur Celere Jacques'),
(52, 243, 250, 30, 32, 98, '2020-03-31 14:00:00', '2020-03-31 15:00:00', 'Salon Salon Robert : Rendez-vous pour gjirehihzigh Gregory pour une spécialité Coupe et Barbe avec le coiffeur Celere Jacques'),
(53, 243, 252, 30, 34, 98, '2020-04-03 15:00:00', '2020-04-03 15:30:00', 'Salon Salon Robert : Rendez-vous pour gjirehihzigh Gregory pour une spécialité Coupe au bol avec le coiffeur Ochon Paul'),
(54, 245, 250, 25, 35, 98, '2020-03-04 12:00:00', '2020-03-04 12:45:00', 'Salon Salon Robert : Rendez-vous pour Deujour Adam pour une spécialité Shampoing et coupe avec le coiffeur Celere Jacques'),
(55, 245, 250, 20, 31, 98, '2020-04-03 12:00:00', '2020-04-03 12:30:00', 'Salon Salon Robert : Rendez-vous pour Deujour Adam pour une spécialité Coupe chauve avec le coiffeur Celere Jacques');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body_content` text NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `creator_firstname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`ID`, `title`, `body_content`, `time_created`, `creator_firstname`) VALUES
(40, 'Ma news', '<p>Nouveau salon de coiffure &quot;BeautyStyle&quot; !!</p>\r\n', '2020-03-25 13:47:21', 'BeautyHair');

-- --------------------------------------------------------

--
-- Structure de la table `hairdressers`
--

CREATE TABLE `hairdressers` (
  `ID` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hairdressers`
--

INSERT INTO `hairdressers` (`ID`, `ID_user`) VALUES
(180, 247),
(179, 248),
(181, 249),
(182, 250),
(183, 251),
(184, 252);

-- --------------------------------------------------------

--
-- Structure de la table `hairdressers_salons`
--

CREATE TABLE `hairdressers_salons` (
  `ID_salons` int(11) NOT NULL,
  `ID_hairdresser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hairdressers_salons`
--

INSERT INTO `hairdressers_salons` (`ID_salons`, `ID_hairdresser`) VALUES
(98, 250),
(98, 252),
(99, 247),
(99, 248),
(99, 249),
(99, 251);

-- --------------------------------------------------------

--
-- Structure de la table `hairdresser_specialities`
--

CREATE TABLE `hairdresser_specialities` (
  `ID_hairdresser` int(11) NOT NULL,
  `ID_speciality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hairdresser_specialities`
--

INSERT INTO `hairdresser_specialities` (`ID_hairdresser`, `ID_speciality`) VALUES
(247, 31),
(247, 34),
(247, 35),
(248, 31),
(248, 34),
(248, 35),
(249, 31),
(249, 32),
(250, 31),
(250, 32),
(250, 35),
(251, 32),
(251, 35),
(252, 32),
(252, 34);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `ID` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`ID`, `role_name`, `role_description`) VALUES
(1, 'User', 'Rôle basique. Accès à son propre espace membre. L\'utilisateur peut prendre rendez-vous.'),
(2, 'Hairdresser', 'Rôle coiffeur. Accès à son espace membre et à son salon de coiffure.'),
(3, 'Admin', 'Rôle administrateur. Accès au panel administration du site.');

-- --------------------------------------------------------

--
-- Structure de la table `salons`
--

CREATE TABLE `salons` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ID_owner` int(11) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salons`
--

INSERT INTO `salons` (`ID`, `name`, `address`, `ID_owner`, `google_map`, `telephone`, `email`, `description`) VALUES
(98, 'Salon Robert', 'Rue des chataignes 38', 252, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2520.7333844929663!2d4.325255415744735!3d50.81757827952769!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c437f56090ab%3A0x4349e8911f850723!2sRue%20des%20Ch%C3%A2taignes%2038%2C%201190%20Forest!5e0!3m2!1sfr!2sbe!4v1585127873376!5m2!1sfr!2sbe\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '45564498546', 'salon_robert@robert', '<p>Bienvenue dans le salon Robert !&nbsp;</p>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n'),
(99, 'Salon BeautyStyle', 'Avenue des villa 38', 251, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2520.3732860339974!2d4.339178115894043!3d50.82424927952865!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c4433b55ff89%3A0xe01f0a0a33577dcc!2sAvenue%20des%20Villas%2038%2C%201060%20Saint-Gilles!5e0!3m2!1sfr!2sbe!4v1585128075292!5m2!1sfr!2sbe\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '549645645949', 'salonBeautyStyle@gmail.com', '<p>Bienvenue dans le salon beautyStyle !&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `salons_photos`
--

CREATE TABLE `salons_photos` (
  `ID` int(11) NOT NULL,
  `ID_salon` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salons_photos`
--

INSERT INTO `salons_photos` (`ID`, `ID_salon`, `photo`) VALUES
(203, 98, 'upload/salons/Salon Robert/photos/i9ccwhje1i5o2cfrqvg0_images.jpg'),
(204, 98, 'upload/salons/Salon Robert/photos/4mj9ptjxhgw42tzmj6zv_istockphoto-956385730-1024x1024.jpg'),
(205, 98, 'upload/salons/Salon Robert/photos/mpdpuni414je29ju3olp_gorgeous O hair.png'),
(206, 99, 'upload/salons/Salon BeautyStyle/photos/ax3ellifaf0cuudpjnev_gorgeous O hair.png'),
(207, 99, 'upload/salons/Salon BeautyStyle/photos/ddma32ampuknli64zr35_istockphoto-956385730-1024x1024.jpg'),
(208, 99, 'upload/salons/Salon BeautyStyle/photos/rmh9ph4qgosbxghvn31u_Ouvrir-un-salon-de-coiffure-en-franchise.jpg'),
(209, 99, 'upload/salons/Salon BeautyStyle/photos/h13z0p162e6wb5dxi79i_téléchargement.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `salons_schedule`
--

CREATE TABLE `salons_schedule` (
  `day` varchar(10) NOT NULL,
  `ID_salons` int(11) NOT NULL,
  `day_schedule_start` time DEFAULT NULL,
  `day_schedule_end` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salons_schedule`
--

INSERT INTO `salons_schedule` (`day`, `ID_salons`, `day_schedule_start`, `day_schedule_end`) VALUES
('Dimanche', 98, NULL, NULL),
('Jeudi', 98, '10:00:00', '20:00:00'),
('Lundi', 98, '09:00:00', '18:00:00'),
('Mardi', 98, NULL, NULL),
('Mercredi', 98, '15:00:00', '18:00:00'),
('Samedi', 98, NULL, NULL),
('Vendredi', 98, NULL, NULL),
('Dimanche', 99, NULL, NULL),
('Jeudi', 99, NULL, NULL),
('Lundi', 99, '10:00:00', '18:00:00'),
('Mardi', 99, NULL, NULL),
('Mercredi', 99, NULL, NULL),
('Samedi', 99, NULL, NULL),
('Vendredi', 99, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `specialities`
--

CREATE TABLE `specialities` (
  `ID` int(11) NOT NULL,
  `speciality_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `specialities`
--

INSERT INTO `specialities` (`ID`, `speciality_name`, `description`, `price`, `duration`) VALUES
(31, 'Coupe chauve', 'Une coupe chauve', 20, '00:30:00'),
(32, 'Coupe et Barbe', 'Une coupe + tonte barbe', 30, '01:00:00'),
(34, 'Coupe au bol', 'Une coupe au bol', 30, '00:30:00'),
(35, 'Shampoing et coupe', 'Un shampoing suivi d\'une coupe', 25, '00:45:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1,
  `avatar` varchar(255) NOT NULL DEFAULT 'upload/membres/default_avatar.png',
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `lastname`, `firstname`, `email`, `password`, `address`, `telephone`, `active`, `avatar`, `register_date`) VALUES
(241, 'Administrateur', 'BeautyHair', 'admin@admin', '$2y$10$1DIklQN2ap9jgENaCcKLp.TGBtn8LmPGgpJOCe3lflcxqHGQkghuu', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 08:27:50'),
(243, 'gjirehihzigh', 'Gregory', 'user1@user1', '$2y$10$m.aoHXxOndQ8QbbLBtC4OO57mpq6Z8yJA4Q2IaIy9gJWy/qS4./py', 'Rue de ladresse', '47594956495498', 1, 'upload/membres/243_Gregory/avatar/f3511afjpehv3g1lr7am_gorgeous O hair.png', '2020-03-25 08:57:42'),
(244, 'Neymar', 'Jean', 'user2@user2', '$2y$10$5IObMSVYk78b9KzAiMCT1.S95a45xuSjWof/5cPjcB7.F7IpN8xiu', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:04:18'),
(245, 'Deujour', 'Adam', 'user3@user3', '$2y$10$mq3YaQ3pEmp5b238Y1zE6eZIeGDnjdWzQ1HKPzB/o9ZdYJozGpAnW', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:04:46'),
(247, 'Voyance', 'Claire', 'coiffeur1@coiffeur1', '$2y$10$uYbh8pmqF0S071snOfpmye970.WFmyT7E3KgocLN9Q8YyKkhbIsmC', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:06:45'),
(248, 'Menvussa', 'Gerard', 'coiffeur2@coiffeur2', '$2y$10$mfTt9yxjhgtg.OPAo6c6he0k6bdgb6fK.O8thO7XADd4ZzH5ioZVG', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:07:35'),
(249, 'Tar', 'Guy', 'coiffeur3@coiffeur3', '$2y$10$21JCl/EIaKLs8/98LKe6deEKL3.x76m50grFnlbfvwLCgixfg2dRa', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:08:29'),
(250, 'Celere', 'Jacques', 'coiffeur4@coiffeur4', '$2y$10$j1fZmbAPMKvmJzGMNDTsp.h5ABE/zPmNBUhc12ewZjKWHMc.uW2Si', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:09:04'),
(251, 'Ution', 'Paul', 'manager1@manager1', '$2y$10$5EKjDviOc7Yn0MaiaBFWHeXBfy2FYDpHXSv9AgI.WDz/Qjd3tIVhW', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:09:58'),
(252, 'Ochon', 'Paul', 'manager2@manager2', '$2y$10$ps9waEXtuiQ1yr3ybDPCQOou6v9UR15GBZBifugc4m1likwGliDOq', '', '', 1, 'upload/membres/default_avatar.png', '2020-03-25 09:10:52');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `ID` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `ID_role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`ID`, `ID_user`, `ID_role`) VALUES
(139, 241, 3),
(141, 243, 1),
(142, 244, 1),
(143, 245, 1),
(145, 247, 2),
(146, 248, 2),
(147, 249, 2),
(148, 250, 2),
(149, 251, 2),
(150, 252, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_appointments_ID_user` (`ID_user`),
  ADD KEY `FK_appointments_ID_speciality` (`ID_speciality`),
  ADD KEY `FK_appointments_ID_salon_Salons_ID` (`ID_salon`),
  ADD KEY `FK_appointments_ID_hairdresser_Hairdresser_ID_user` (`ID_hairdresser`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `hairdressers`
--
ALTER TABLE `hairdressers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_hairdressers_ID_user` (`ID_user`) USING BTREE;

--
-- Index pour la table `hairdressers_salons`
--
ALTER TABLE `hairdressers_salons`
  ADD PRIMARY KEY (`ID_salons`,`ID_hairdresser`),
  ADD KEY `FK_Hairdressers_Salons_ID_hairdresser_Hairdressers_ID_user` (`ID_hairdresser`);

--
-- Index pour la table `hairdresser_specialities`
--
ALTER TABLE `hairdresser_specialities`
  ADD PRIMARY KEY (`ID_hairdresser`,`ID_speciality`),
  ADD KEY `FK_hairdresser_specialities_ID_speciality` (`ID_speciality`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `salons`
--
ALTER TABLE `salons`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_salons_ID_owner_hairdressers_ID_user` (`ID_owner`);

--
-- Index pour la table `salons_photos`
--
ALTER TABLE `salons_photos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Salons_Photos_ID_salon_Salons_ID` (`ID_salon`);

--
-- Index pour la table `salons_schedule`
--
ALTER TABLE `salons_schedule`
  ADD PRIMARY KEY (`ID_salons`,`day`);

--
-- Index pour la table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_users_roles_ID_user` (`ID_user`) USING BTREE,
  ADD KEY `FK_users_roles_ID_role` (`ID_role`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `hairdressers`
--
ALTER TABLE `hairdressers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `salons`
--
ALTER TABLE `salons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `salons_photos`
--
ALTER TABLE `salons_photos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT pour la table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT pour la table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `FK_appointments_ID_hairdresser_Hairdresser_ID_user` FOREIGN KEY (`ID_hairdresser`) REFERENCES `hairdressers` (`ID_user`),
  ADD CONSTRAINT `FK_appointments_ID_salon_Salons_ID` FOREIGN KEY (`ID_salon`) REFERENCES `salons` (`ID`),
  ADD CONSTRAINT `FK_appointments_ID_speciality` FOREIGN KEY (`ID_speciality`) REFERENCES `specialities` (`ID`),
  ADD CONSTRAINT `FK_appointments_ID_user` FOREIGN KEY (`ID_user`) REFERENCES `users` (`ID`);

--
-- Contraintes pour la table `hairdressers`
--
ALTER TABLE `hairdressers`
  ADD CONSTRAINT `FK_Hairdressers_ID_user` FOREIGN KEY (`ID_user`) REFERENCES `users` (`ID`);

--
-- Contraintes pour la table `hairdressers_salons`
--
ALTER TABLE `hairdressers_salons`
  ADD CONSTRAINT `FK_Hairdressers_Salons_ID_Salons_Salons_ID` FOREIGN KEY (`ID_salons`) REFERENCES `salons` (`ID`),
  ADD CONSTRAINT `FK_Hairdressers_Salons_ID_hairdresser_Hairdressers_ID_user` FOREIGN KEY (`ID_hairdresser`) REFERENCES `hairdressers` (`ID_user`);

--
-- Contraintes pour la table `hairdresser_specialities`
--
ALTER TABLE `hairdresser_specialities`
  ADD CONSTRAINT `FK_hairdresser_specialities_ID_hairdresser` FOREIGN KEY (`ID_hairdresser`) REFERENCES `hairdressers` (`ID_user`),
  ADD CONSTRAINT `FK_hairdresser_specialities_ID_speciality` FOREIGN KEY (`ID_speciality`) REFERENCES `specialities` (`ID`);

--
-- Contraintes pour la table `salons`
--
ALTER TABLE `salons`
  ADD CONSTRAINT `FK_salons_ID_owner_hairdressers_ID_user` FOREIGN KEY (`ID_owner`) REFERENCES `hairdressers` (`ID_user`);

--
-- Contraintes pour la table `salons_photos`
--
ALTER TABLE `salons_photos`
  ADD CONSTRAINT `FK_Salons_Photos_ID_salon_Salons_ID` FOREIGN KEY (`ID_salon`) REFERENCES `salons` (`ID`);

--
-- Contraintes pour la table `salons_schedule`
--
ALTER TABLE `salons_schedule`
  ADD CONSTRAINT `FK_salons_schedule_ID_salons` FOREIGN KEY (`ID_salons`) REFERENCES `salons` (`ID`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK_ID_role` FOREIGN KEY (`ID_role`) REFERENCES `roles` (`ID`),
  ADD CONSTRAINT `FK_ID_user` FOREIGN KEY (`ID_user`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
