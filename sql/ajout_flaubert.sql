--ajout de Gustave Flaubert dans la base de données
INSERT INTO auteurs (nom, prenom, date_naissance, date_mort)
VALUES ('Flaubert', 'Gustave', 1821, 1880);

--ajout de romans de Gustave Flaubert dans la table "romans"
INSERT INTO romans (titre, annee_publication) 
VALUES
('Madame Bovary', 1857)
('Salammbô', 1862)
('L’Éducation sentimentale', 1869)
('La Tentation de saint Antoine', 1874)
('Trois contes', 1877)
('Bouvard et Pécuchet', 1881)

--association entre Gustave Flaubert et ses romans
INSERT INTO auteurs_romans (id_auteur, id_roman) 
VALUES
(4, 65),
(4, 66),
(4, 67),
(4, 68),
(4, 69),
(4, 70);