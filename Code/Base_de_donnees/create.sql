DROP DATABASE VOITURE;

CREATE DATABASE VOITURE
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;



-- MODELE
CREATE TABLE MODELE (
    nomModele  VARCHAR(42) PRIMARY KEY,
    nomMarque     VARCHAR(42) REFERENCES Marque(nommarque)
);


-- VOITURE
CREATE TABLE VOITURE (
    idVoiture SERIAL PRIMARY KEY,
    nomModele VARCHAR(42) REFERENCES MODELE       (nommodele),
    nomType   VARCHAR(42) REFERENCES TYPE_VOITURE (nomtype)
);


-- PHOTO
CREATE TABLE PHOTO (
    idPhoto    SERIAL PRIMARY KEY,
    nomPhoto   VARCHAR(42),
    datePhoto  DATE,
    idVoiture  INT REFERENCES VOITURE (idvoiture)
);


-- COULEUR_VOITURE
CREATE TABLE COULEUR_VOITURE (
    idVoiture  INT         REFERENCES VOITURE (idvoiture ),
    nomCouleur VARCHAR(42) REFERENCES COULEUR (nomcouleur),
    PRIMARY KEY (idvoiture, nomcouleur)
);


-- MARQUE
CREATE TABLE MARQUE (
    nomMarque VARCHAR(42) PRIMARY KEY,
    pays      VARCHAR(42)
);
