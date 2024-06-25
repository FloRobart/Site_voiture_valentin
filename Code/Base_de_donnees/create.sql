DROP DATABASE VOITURE;

CREATE DATABASE VOITURE
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;



--* PHOTO (idPhoto, nomPhoto, datePhoto, (F) lieuxPhoto)
CREATE TABLE PHOTO (
    idPhoto    SERIAL PRIMARY KEY,
    nomPhoto   TEXT   NOT NULL   ,
    datePhoto  DATE   NOT NULL   ,
    lieuxPhoto TEXT              ,
);


--* MARQUE (nomMarque, paysOrigineMarque)
CREATE TABLE MARQUE (
    nomMarque         TEXT PRIMARY KEY,
    paysOrigineMarque TEXT NOT NULL
);


--* PREPARATEUR (nomPreparateur, paysOriginePrepa)
CREATE TABLE PREPARATEUR (
    nomPreparateur   TEXT PRIMARY KEY,
    paysOriginePrepa TEXT NOT NULL
);


-- MOTEUR (idMoteur, (F) nbCylindre, (F) cylindree, (F) architecture, (F) aspiration, energie, (F) regimeMax, puissanceMax, couple)
CREATE TABLE MOTEUR (
    idMoteur     SERIAL PRIMARY KEY           ,
    nbCylindre   INT    CHECK (nbCylindre > 0),
    cylindree    REAL   CHECK (cylindree  > 0),
    architecture TEXT                         ,
    aspiration   TEXT                         ,
    energie      TEXT   NOT NULL              ,
    regimeMax    INT                          ,
    puissanceMax INT    NOT NULL              ,
    couple       INT    NOT NULL
);


-- VOITURE (idVoiture, nomModele, nomType, poids, couleur, acceleration, vitesseMax, transmission, (F) boiteDeVitesse, (F) nomPreparateur#, idMoteur#)
CREATE TABLE VOITURE (
    idVoiture    SERIAL PRIMARY KEY,
    nomModele    TEXT NOT NULL,
    nomType      TEXT NOT NULL,
    poids        INT  NOT NULL,
    acceleration REAL NOT NULL, -- accélération 0 à 100km/h
    vitesseMax   INT  NOT NULL,
    transmission TEXT NOT NULL,
    boiteDeVitesse TEXT,
    nomPreparateur TEXT,
    idMoteur INT NOT NULL REFERENCES MOTEUR(idMoteur)
);


-- RmarqueVoiture (idVoiture#, nomMarque#)
CREATE TABLE marqueVoiture (
    idVoiture INT REFERENCES VOITURE (idvoiture),
    nomMarque TEXT REFERENCES MARQUE (nommarque)
);


-- RphotoVoiture (idVoiture#, idPhoto#)
CREATE TABLE photoVoiture (
    idPhoto   INT REFERENCES PHOTO  (idphoto  ),
    idVoiture INT REFERENCES VOITURE(idvoiture),
    PRIMARY KEY (idPhoto, idVoiture)
);