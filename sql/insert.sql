USE romans_nlp;

INSERT INTO auteurs (nom, prenom) -- insertions des auteurs, on peut aussi ajouter les dates de naissance et de mort pour enrichir la base de données
VALUES
('de Goncourt', 'Edmond'), -- reflexion pour ajouter les annees de naissance et de mort des auteurs
('de Goncourt', 'Jules');

INSERT INTO romans (titre, annee_publication) -- insertions des romans avec leur année de publication
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

INSERT INTO auteurs_romans (id_auteur, id_roman) -- association entre les auteurs et les romans, ici chaque roman est associé à Edmond et Jules de Goncourt
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