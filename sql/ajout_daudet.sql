-- ajout de Daudet dans la base de données
INSERT INTO auteurs (nom, prenom, date_naissance, date_mort)
VALUES ('Daudet', 'Alphonse', 1840 , 1897);

--ajout de romans d'Alphonse Daudet dans la table "romans"
INSERT INTO romans (titre, annee_publication) 
VALUES
('Le Petit Chose', 1868),
('Tartarin de Tarascon', 1872),
('Fromont jeune et Risler aîné', 1874),
('Robert Helmont', 1874),
('Jack', 1876),
('Le Nabab', 1877),
('Les Rois en exil', 1879),
('Numa Roumestan', 1881),
('L’Évangéliste', 1883),
('Sapho', 1884),
('Tartarin sur les Alpes', 1885),
('La Belle Nivernaise', 1886),
('L’Immortel', 1888),
('Port-Tarascon', 1890),
('Rose et Ninette', 1892),
('La Petite Paroisse', 1895),
('Le Trésor d’Arlatan', 1897),
('Soutien de famille', 1898);

--association entre Alphonse Daudet et ses romans
INSERT INTO auteurs_romans (id_auteur, id_roman) 
VALUES
(5, 47),
(5, 48),
(5, 49),
(5, 50),
(5, 51),
(5, 52),
(5, 53),
(5, 54),
(5, 55),
(5, 56),
(5, 57),
(5, 58),
(5, 59),
(5, 60),
(5, 61),
(5, 62),
(5, 63),
(5, 64);
