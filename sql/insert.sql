USE romans_nlp;


/*
Insertion des frères Goncourt
on peut aussi ajouter les dates de naissance et de mort pour enrichir la base de données.
*/
INSERT INTO auteurs (nom, prenom) 
VALUES
('de Goncourt', 'Edmond'), -- reflexion pour ajouter les annees de naissance et de mort des auteurs
('de Goncourt', 'Jules');

/*
Insertion des romans des frères Goncourt
avec leur année de publication.
*/
INSERT INTO romans (titre, annee_publication) 
VALUES
('Charles Demailly', 1860),
('Soeur Philomène', 1861),
('Renée Mauperin', 1864),
('Germinie Lacerteux', 1865),
('Manette Salomon', 1867),
('Madame Gervaisais', 1869),
('La Fille Elisa', 1877),
('Frères Zemganno', 1879),
('La Faustin', 1882),
('Chérie', 1884);

/*
association entre les auteurs et les romans, 
ici chaque roman est associé à Edmond et Jules de Goncourt
*/
INSERT INTO auteurs_romans (id_auteur, id_roman) 
VALUES
(1,1),(2,1),
(1,2),(2,2),
(1,3),(2,3),
(1,4),(2,4),
(1,5),(2,5),
(1,6),(2,6),
(1,7),
(1,8),
(1,9),
(1,10);

/*apres reflexion, on peut aussi ajouter les dates de naissance 
et de mort des auteurs pour enrichir la base de données
*/
ALTER TABLE auteurs
ADD date_naissance int;

ALTER TABLE auteurs
ADD date_mort int;

#mise à jour des dates de naissance et de mort pour les frères Goncourt
UPDATE auteurs
SET date_naissance = 1830,
    date_mort = 1870
WHERE id_auteur = 2;

INSERT INTO auteurs (nom, prenom, date_naissance, date_mort)
VALUES ('Daudet', 'Alphonse', 1840, 1897);