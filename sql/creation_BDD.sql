
CREATE DATABASE romans_nlp;
USE romans_nlp;

-- Création des tables pour la base de données des romans et auteurs
CREATE TABLE auteurs (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100)
);

-- Table pour stocker les romans, avec leur titre et année de publication
CREATE TABLE romans (
    id_roman INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    annee_publication INT,
    texte_brut LONGTEXT
);

-- Table d'association pour gérer la relation plusieurs-à-plusieurs entre auteurs et romans
CREATE TABLE auteurs_romans (
    id_auteur INT NOT NULL,
    id_roman INT NOT NULL,
    PRIMARY KEY (id_auteur, id_roman),
    FOREIGN KEY (id_auteur) REFERENCES auteurs(id_auteur),
    FOREIGN KEY (id_roman) REFERENCES romans(id_roman)
);

-- Table pour stocker les segments extraits des romans, avec leur ordre de segmentation
CREATE TABLE segments (
    id_segment INT PRIMARY KEY AUTO_INCREMENT,
    id_roman INT NOT NULL,
    ordre_segment INT NOT NULL,
    texte_segment LONGTEXT NOT NULL,
    FOREIGN KEY (id_roman) REFERENCES romans(id_roman)
);

-- Table pour stocker les phrases extraites des romans, avec leur motif d'extraction
CREATE TABLE phrase_roman (
id_phrase INT PRIMARY KEY AUTO_INCREMENT,
id_roman INT NOT NULL,
ordre_phrase INT NOT NULL,
texte_phrase TEXT NOT NULL,
motif_phrase TEXT NOT NULL,
FOREIGN KEY (id_roman) REFERENCES romans(id_roman)
);
