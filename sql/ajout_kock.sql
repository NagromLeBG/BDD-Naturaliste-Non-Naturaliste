-- ajout de Paul de Kock dans la base de données
INSERT INTO auteurs (nom, prenom, date_naissance, date_mort)
VALUES ('Kock', 'Paul de', 1793 , 1871);

--ajout de romans Paul de Kock dans la table "romans"
INSERT INTO romans (titre, annee_publication) 
VALUES
("L'enfant de ma femme", 1812),
('Andre le Savoyard', 1826),
('Jean', 1828),
('Madeleine', 1838),

--association Paul de Kock et ses romans
INSERT INTO auteurs_romans (id_auteur, id_roman) 
VALUES
(6, 71),
(6, 72),
(6, 73),
(6, 74);

