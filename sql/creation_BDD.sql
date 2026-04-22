
CREATE DATABASE romans_nlp;
USE romans_nlp;

CREATE TABLE auteurs (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100)
);

CREATE TABLE romans (
    id_roman INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    annee_publication INT,
    texte_brut LONGTEXT
);

CREATE TABLE auteurs_romans (
    id_auteur INT NOT NULL,
    id_roman INT NOT NULL,
    PRIMARY KEY (id_auteur, id_roman),
    FOREIGN KEY (id_auteur) REFERENCES auteurs(id_auteur),
    FOREIGN KEY (id_roman) REFERENCES romans(id_roman)
);

CREATE TABLE segments (
    id_segment INT PRIMARY KEY AUTO_INCREMENT,
    id_roman INT NOT NULL,
    ordre_segment INT NOT NULL,
    texte_segment LONGTEXT NOT NULL,
    FOREIGN KEY (id_roman) REFERENCES romans(id_roman)
);

CREATE TABLE segments_lemmatises (
    id_segment_lemmatise INT PRIMARY KEY AUTO_INCREMENT,
    id_segment INT NOT NULL,
    contenu_lemmatise LONGTEXT NOT NULL,
    FOREIGN KEY (id_segment) REFERENCES segments(id_segment)
);