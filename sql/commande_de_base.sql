USE romans_nlp;

# voir tous les auteurs de la base de données
SELECT * FROM auteurs;  

# pour voir les auteurs associés à chaque roman avec les titres et les années de publication
SELECT a.prenom, a.nom, r.titre, r.annee_publication
FROM auteurs a
JOIN auteurs_romans ar ON a.id_auteur = ar.id_auteur
JOIN romans r ON ar.id_roman = r.id_roman
ORDER BY r.annee_publication, a.prenom;

SELECT * FROM romans;

SELECT texte_segment FROM segments
WHERE id_roman=2;

SELECT * FROM segments
WHERE id_roman=4;
