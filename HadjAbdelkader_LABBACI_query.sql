-- Insérer des données pour des comédiens
INSERT INTO halo_acteurs (nom, prénom, popularité, pourcentageAugmentation) VALUES
('Depp', 'Johnny', 'Haute', 15.8),
('Cotillard', 'Marion', 'Moyenne', 12.4),
('Dujardin', 'Jean', NULL, 9.2), -- La popularité peut être NULL
('Haenel', 'Adèle', 'Moyenne', 5.6);

-- Insérer des données pour des magiciens
INSERT INTO halo_acteurs (nom, prénom, popularité, pourcentageAugmentation) VALUES
('Copperfield', 'David', 'Haute', 20.2),
('Laplace', 'Éric', 'Moyenne', 14.7),
('Vernet', 'Dominique', NULL, 10.1), -- La popularité peut être NULL
('Ross', 'Kévin', 'Moyenne', 6.3);

-- Insérer des données pour des groupes d'orchestre
INSERT INTO halo_acteurs (nom, popularité, pourcentageAugmentation) VALUES
('Daft Punk', 'Haute', 25.5),
('Indochine', 'Moyenne', 18.9),
('Carpenter Brut', NULL, 13.6), -- La popularité peut être NULL
('M83', 'Haute', 7.8);


-- Insérer des données pour les théâtres
INSERT INTO halo_theatre (nomTheatre) VALUES
('La Criée Theatre'),
('Théâtre Toursky '),
('Théâtre du Gymnase'),
('Badaboum Theater'),
('Municipal Odeon Theatre'),
('Opéra de Marseille'),
('Le Silo'),
('Le Dôme de Marseille'),
('Theatre Lenche'),
('Théâtre Mazenod'),
('Théâtre du Jeu de Paume'),
('Friche la Belle de Mai'),
('Théatre Molière'),
('Alcazar');

-- Salles pour La Criée Theatre
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle A La Criée', 30, 0.4, 0.3, 0.3, 20.0, 15),
('Salle B La Criée', 20, 0.5, 0.4, 0.1, 15.0, 15);

-- Salles pour Théâtre Toursky - Cie Richard Martin International
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Toursky A', 25, 0.3, 0.4, 0.3, 18.0, 16),
('Salle Toursky B', 28, 0.2, 0.3, 0.5, 22.0, 16);

-- Salles pour Théâtre du Gymnase
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle du Gymnase', 27, 0.4, 0.3, 0.3, 25.0, 17);

-- Salles pour Badaboum Theater
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Badaboum A', 40, 0.6, 0.2, 0.2, 12.0, 18),
('Salle Badaboum B', 20, 0.4, 0.4, 0.2, 18.0, 18);

-- Salles pour Municipal Odeon Theatre
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Municipal Odeon A', 30, 0.3, 0.3, 0.4, 22.0, 19),
('Salle Municipal Odeon B', 23, 0.2, 0.5, 0.3, 20.0, 19);

-- Salles pour Opéra de Marseille
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Opéra de Marseille A', 400, 0.4, 0.3, 0.3, 30.0, 20),
('Salle Opéra de Marseille B', 300, 0.3, 0.4, 0.3, 25.0, 20);

-- Salles pour Le Silo
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Le Silo A', 350, 0.3, 0.4, 0.3, 28.0, 21),
('Salle Le Silo B', 250, 0.2, 0.3, 0.5, 24.0, 21);

-- Salles pour Le Dôme de Marseille
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Le Dôme de Marseille A', 500, 0.4, 0.3, 0.3, 35.0, 22),
('Salle Le Dôme de Marseille B', 400, 0.2, 0.4, 0.4, 30.0, 22);

-- Salles pour Theatre Lenche
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Theatre Lenche A', 120, 0.5, 0.3, 0.2, 18.0, 23);

-- Salles pour Théâtre Mazenod
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Théâtre Mazenod A', 200, 0.4, 0.4, 0.2, 22.0, 24);

-- Salles pour Théâtre du Jeu de Paume
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Théâtre du Jeu de Paume A', 180, 0.3, 0.4, 0.3, 20.0, 25);

-- Salles pour Friche la Belle de Mai
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Friche la Belle de Mai A', 300, 0.4, 0.3, 0.3, 25.0, 26);

-- Salles pour Théatre Molière
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Théâtre Molière A', 150, 0.5, 0.3, 0.2, 18.0, 27);

-- Salles pour Alcazar
INSERT INTO halo_salle (nom, capacite, pourcentageA, pourcentageB, poucentageC, prix, FK_idTheatre) VALUES
('Salle Alcazar A', 200, 0.4, 0.3, 0.3, 20.0, 28),
('Salle Alcazar B', 180, 0.3, 0.4, 0.3, 22.0, 28);


-- Remplir la table halo_genre
INSERT INTO halo_genre (typeSpectacle, Prix) VALUES
('Comédie', 15.0),
('Drame', 18.0),
('Magie', 20.0),
('Musical', 25.0),
('Thriller', 22.0),
('Électro', 30.0);

-- Insérer des exemples de spectateurs
INSERT INTO halo_spectateur (nom, prenom, age) VALUES
('Martin', 'Sophie', 28),
('Lefevre', 'Pierre', 35),
('Dubois', 'Alice', 22),
('Roux', 'Thomas', 40),
('Fontaine', 'Léa', 30),
('Lemoine', 'Antoine', 25),
('Bertrand', 'Camille', 32),
('Girard', 'Nicolas', 28),
('Moreau', 'Émilie', 45),
('Dupont', 'Maxime', 26),
('Robert', 'Charlotte', 33),
('Simon', 'Lucas', 40),
('Leroy', 'Juliette', 29),
('Fournier', 'Gabriel', 38),
('Garnier', 'Marie', 31),
('Caron', 'Alexandre', 27),
('Marchand', 'Éva', 36),
('Dumas', 'Hugo', 23),
('Michel', 'Clara', 42),
('Riviere', 'Louis', 34);


-- Insérer des exemples dans la table halo_genre_spectateur

-- Associer des spectateurs à des genres
INSERT INTO halo_genre_spectateur (fk_idGenre1, fk_idSpectateur) VALUES
(1, 1),  -- Spectateur 1 aime le genre 1 (Comédie)
(2, 2),  -- Spectateur 2 aime le genre 2 (Drame)
(3, 3),  -- Spectateur 3 aime le genre 3 (Magie)
(4, 4),  -- Spectateur 4 aime le genre 4 (Musical)
(5, 5),  -- Spectateur 5 aime le genre 5 (Thriller)
(6, 6),  -- Spectateur 6 aime le genre 6 (Électro)
(1, 7),  -- Spectateur 7 aime le genre 1 (Comédie)
(2, 8),  -- Spectateur 8 aime le genre 2 (Drame)
(3, 9),  -- Spectateur 9 aime le genre 3 (Magie)
(4, 10), -- Spectateur 10 aime le genre 4 (Musical)
(5, 11), -- Spectateur 11 aime le genre 5 (Thriller)
(6, 12), -- Spectateur 12 aime le genre 6 (Électro)
(1, 13), -- Spectateur 13 aime le genre 1 (Comédie)
(2, 14), -- Spectateur 14 aime le genre 2 (Drame)
(3, 15), -- Spectateur 15 aime le genre 3 (Magie)
(4, 16), -- Spectateur 16 aime le genre 4 (Musical)
(5, 17), -- Spectateur 17 aime le genre 5 (Thriller)
(6, 18), -- Spectateur 18 aime le genre 6 (Électro)
(1, 19), -- Spectateur 19 aime le genre 1 (Comédie)
(2, 20); -- Spectateur 20 aime le genre 2 (Drame)


-- Remplir la table halo_categorieplace avec les types A, B et C
INSERT INTO halo_categorieplace (Type) VALUES
('A'),
('B'),
('C');


-- Salles A La Criée
-- Salles A La Criée
INSERT INTO halo_place (Num, fk_idSalle1, fk_idCategoriePlace1) VALUES
(1, 13, 1), (2, 13, 2), (3, 13, 3), (4, 13, 1), (5, 13, 2), (6, 13, 3), (7, 13, 1), (8, 13, 2), (9, 13, 3), (10, 13, 1);

-- Salles Toursky - Cie Richard Martin International
INSERT INTO halo_place (Num, fk_idSalle1, fk_idCategoriePlace1) VALUES
(1, 14, 1), (2, 14, 2), (3, 14, 3), (4, 14, 1), (5, 14, 2), (6, 14, 3), (7, 14, 1), (8, 14, 2), (9, 14, 3), (10, 14, 1);

-- Salle du Gymnase
INSERT INTO halo_place (Num, fk_idSalle1, fk_idCategoriePlace1) VALUES
(1, 15, 1), (2, 15, 2), (3, 15, 3), (4, 15, 1), (5, 15, 2), (6, 15, 3), (7, 15, 1), (8, 15, 2), (9, 15, 3), (10, 15, 1);

-- Badaboum Theater
INSERT INTO halo_place (Num, fk_idSalle1, fk_idCategoriePlace1) VALUES
(1, 16, 1), (2, 16, 2), (3, 16, 3), (4, 16, 1), (5, 16, 2), (6, 16, 3), (7, 16, 1), (8, 16, 2), (9, 16, 3), (10, 16, 1);

-- Municipal Odeon Theatre
INSERT INTO halo_place (Num, fk_idSalle1, fk_idCategoriePlace1) VALUES
(1, 17, 1), (2, 17, 2), (3, 17, 3), (4, 17, 1), (5, 17, 2), (6, 17, 3), (7, 17, 1), (8, 17, 2), (9, 17, 3), (10, 17, 1);



-- Catégories de public
INSERT INTO halo_categoriespectacle (categoriePublic) VALUES
('Enfants'),
('Adolescents'),
('Adultes'),
('Seniors'),
('Tous publics');


-- Insertion pour la table halo_periode
INSERT INTO halo_periode (libelePeriode, poucentageAugmentation, pourcentageReduction) VALUES
('wk', 0.1, 0),     -- Week-end (augmentation)
('bf', 0.2, 0.2),   -- Black Friday (augmentation et réduction)
('fa', 0.2, 0.2),   -- Fin d'année (augmentation et réduction)
('pn', 0, 0),       -- Période normale (pas de changement)
('pm', 0.1, 0.2);   -- Après-midi (augmentation et réduction)

-- Insertion pour la table halo_spectacle
INSERT INTO halo_spectacle (titre, catgPublic, duree, placementCategorie, FK_idSalle2, FK_idGenre2) VALUES
('Spectacle 1', 'Tous publics', 2.5, 1, 13, 1),      -- Exemple de spectacle dans la Salle A La Criée (idSalle=1) et de genre Théâtre (idGenre=1)
('Spectacle 2', 'Adultes', 1.5, 0, 14, 2),             -- Exemple de spectacle dans la Salle B La Criée (idSalle=2) et de genre Comédie (idGenre=2)
('Spectacle 3', 'Enfants', 1.0, 1, 15, 3),             -- Exemple de spectacle dans la Salle Toursky A (idSalle=3) et de genre Enfants (idGenre=3)
('Spectacle 4', 'Adolescents', 2.0, 0, 16, 4);         -- Exemple de spectacle dans la Salle Toursky B (idSalle=4) et de genre Magie (idGenre=4)

-- Spectacles supplémentaires
INSERT INTO halo_spectacle (titre, catgPublic, duree, placementCategorie, FK_idSalle2, FK_idGenre2) VALUES
('Spectacle 5', 'Adultes', 2.0, 1, 5, 5),      -- Exemple de spectacle dans la Salle du Gymnase (idSalle=5) et de genre Théâtre Musical (idGenre=5)
('Spectacle 6', 'Tous publics', 1.5, 0, 6, 6),  -- Exemple de spectacle dans la Salle Badaboum A (idSalle=6) et de genre Concert (idGenre=6)
('Spectacle 7', 'Adolescents', 1.0, 1, 7, 7),    -- Exemple de spectacle dans la Salle Badaboum B (idSalle=7) et de genre Cirque (idGenre=7)
('Spectacle 8', 'Enfants', 2.5, 0, 8, 8),        -- Exemple de spectacle dans la Salle Municipal Odeon A (idSalle=8) et de genre Théâtre de marionnettes (idGenre=8)
('Spectacle 9', 'Adultes', 2.0, 1, 9, 9),        -- Exemple de spectacle dans la Salle Municipal Odeon B (idSalle=9) et de genre Opéra (idGenre=9)
('Spectacle 10', 'Enfants', 1.5, 0, 10, 10),     -- Exemple de spectacle dans la Salle A La Criée (idSalle=10) et de genre Ballet (idGenre=10)
('Spectacle 11', 'Tous publics', 1.0, 1, 1, 11), -- Exemple de spectacle dans la Salle Toursky A (idSalle=11) et de genre Humour (idGenre=11)
('Spectacle 12', 'Adolescents', 2.5, 0, 2, 12);  -- Exemple de spectacle dans la Salle B La Criée (idSalle=12) et de genre Théâtre interactif (idGenre=12)


-- Insertion pour la table halo_categoriespectacle_spectacle
INSERT INTO halo_categoriespectacle_spectacle (fk_idCategoriePublic1, fk_specID1) VALUES
(5, 1),  -- Spectacle 1 appartient à la catégorie "Tous publics"
(3, 2),  -- Spectacle 2 appartient à la catégorie "Adultes"
(1, 3),  -- Spectacle 3 appartient à la catégorie "Enfants"
(2, 4);  -- Spectacle 4 appartient à la catégorie "Adolescents"

--insertion de la table animation

INSERT INTO halo_animation (fk_specID3, fk_idActor) VALUES
(1, 5), (2, 3), (3, 7), (4, 1), (5, 9), (6, 2), (7, 11), (8, 4), (9, 8), (10, 6), (11, 10), (12, 12);



-- Insertion for the table HALO_Reservation with prixTotal set to 0 for 10 reservations
INSERT INTO HALO_Reservation (prixTotal) VALUES
(0), (0), (0), (0), (0), (0), (0), (0), (0), (0);


-- Insertion for the table HALO_Representation with 4 representations
INSERT INTO HALO_Representation (heureDebut, fk_idCategoriePublic2, fk_idCategoriePlace2, fk_SpecId2, fk_idReservation) VALUES
('2024-01-10 18:00:00', 3, 2, 1, 1), -- Representation 1
('2024-04-10 14:00:00', 4, 1, 2, 2), -- Representation 2
('2024-12-10 19:00:00', 1, 3, 3, 3), -- Representation 3
('2024-01-20 18:00:00', 5, 1, 4, 4); -- Representation 4
