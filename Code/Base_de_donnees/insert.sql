-- VOITURE
INSERT INTO VOITURE (nomModele, nomType)
VALUES ('', ''),   -- 1



-- TYPE
INSERT INTO TYPE_VOITURE (nomType)
VALUES ('suv'        ), --  1
       ('crossover'  ), --  2
       ('4x4'        ), --  3
       ('6x6'        ), --  4
       ('compact'    ), --  5
       ('berlin'     ), --  6
       ('break'      ), --  7
       ('sports car' ), --  8
       ('supercar'   ), --  9
       ('hypercar'   ), -- 10
       ('limousine'  ), -- 11
       ('competition'), -- 12
       ('cabriolet'  ), -- 13
       ('roadster'   ); -- 14



-- MARQUE
INSERT INTO MARQUE (nomMarque, pays)
VALUES ('bugatti'    , 'Italie'   ), --  1
       ('pagani'     , 'Italie'   ), --  2
       ('Renault'    , 'France'   ), --  3
       ('Peugeot'    , 'France'   ), --  4
       ('Bmw'        , 'Allemagne'), --  5
       ('Mercedes'   , 'Allemagne'), --  6
       ('Audi'       , 'Allemagne'), --  7
       ('Opel'       , 'Allemagne'), --  8
       ('Smart'      , 'Allemagne'), --  9
       ('Ferrari'    , 'Italie'   ), -- 10
       ('Lamborghini', 'Italie'   ), -- 11
       ('Alfa Romeo' , 'Italie'   ), -- 12
       ('Italdesign' , 'Italie'   ), -- 13
       ('Lancia'     , 'Italie'   ), -- 14


-- MODELE
INSERT INTO MODELE (nomModele, generation,nomMarque)
VALUES ('megane rs'               , 'Renault'    ),
       ('Clio rs'                 , 'Renault'    ),
       ('205 gti'                 , 'Peugeot'    ),
       ('1M'                      , 'Bmw'        ),
       ('M1'                      , 'Bmw'        ),
       ('M2'                      , 'Bmw'        ),
       ('M3'                      , 'Bmw'        ),
       ('M4'                      , 'Bmw'        ),
       ('M5'                      , 'Bmw'        ),
       ('M6'                      , 'Bmw'        ),
       ('M8'                      , 'Bmw'        ),
       ('X3M'                     , 'Bmw'        ),
       ('X4M'                     , 'Bmw'        ),
       ('X5M'                     , 'Bmw'        ),
       ('X6M'                     , 'Bmw'        ),
       ('Z1'                      , 'Bmw'        ),
       ('Z3'                      , 'Bmw'        ),
       ('Z4'                      , 'Bmw'        ),
       ('Z8'                      , 'Bmw'        ),
       ('I8'                      , 'Bmw'        ),
       ('Isetta'                  , 'Bmw'        ), 
       ('Alpina'                  , 'Bmw'        ),
       ('A45 amg'                 , 'Mercedes'   ),
       ('C63 amg'                 , 'Mercedes'   ),
       ('E63 amg'                 , 'Mercedes'   ),
       ('SLS amg'                 , 'Mercedes'   ),
       ('S63 amg'                 , 'Mercedes'   ),
       ('S65 amg'                 , 'Mercedes'   ),
       ('Maybach'                 , 'Mercedes'   ),
       ('Sl55 amg'                , 'Mercedes'   ),
       ('Sl63 amg'                , 'Mercedes'   ),
       ('C63 amg black series'    , 'Mercedes'   ),
       ('SL55 Black series'       , 'Mercedes'   ),
       ('190SL'                   , 'Mercedes'   ),
       ('300SL'                   , 'Mercedes'   ),
       ('S560'                    , 'Mercedes'   ),
       ('S600'                    , 'Mercedes'   ),
       ('SLR'                     , 'Mercedes'   ),
       ('Amg gt'                  , 'Mercedes'   ),
       ('Amg gts'                 , 'Mercedes'   ),
       ('amg gtc'                 , 'Mercedes'   ),
       ('Amg gtr'                 , 'Mercedes'   ),
       ('Amg gtr pro'             , 'Mercedes'   ),
       ('Amg gt Black Series'     , 'Mercedes'   ),
       ('Amg gt63s'               , 'Mercedes'   ),
       ('SLS AMG Black series'    , 'Mercedes'   ),
       ('SLK 55 Black series'     , 'Mercedes'   ),
       ('SL pagode'               , 'Mercedes'   ),
       ('280se'                   , 'Mercedes'   ),
       ('RS2'                     , 'Audi'       ),
       ('RS3'                     , 'Audi'       ),
       ('RS4'                     , 'Audi'       ),
       ('RS5'                     , 'Audi'       ),
       ('RS6'                     , 'Audi'       ),
       ('RS7'                     , 'Audi'       ),
       ('S8'                      , 'Audi'       ),
       ('RSQ3'                    , 'Audi'       ),
       ('RSQ8'                    , 'Audi'       ),
       ('R8'                      , 'Audi'       ),
       ('Cayman'                  , 'Porsche'    ),
       ('Panamera'                , 'Porsche'    ),
       ('Cayenne'                 , 'Porsche'    ),
       ('Macan'                   , 'Porsche'    ),
       ('Taycan'                  , 'Porsche'    ),
       ('911'                     , 'Porsche'    ),
       ('901'                     , 'Porsche'    ),
       ('930'                     , 'Porsche'    ),
       ('996'                     , 'Porsche'    ),
       ('997'                     , 'Porsche'    ),
       ('991'                     , 'Porsche'    ),
       ('992'                     , 'Porsche'    ),
       ('Ruf'                     , 'Porsche'    ),
       ('Techart'                 , 'Porsche'    ),
       ('Brabus'                  , 'Smart'      ),
       ('208'                     , 'Ferrari'    ),
       ('308'                     , 'Ferrari'    ),
       ('348'                     , 'Ferrari'    ),
       ('488'                     , 'Ferrari'    ),
       ('F40'                     , 'Ferrari'    ),
       ('F50'                     , 'Ferrari'    ),
       ('F12'                     , 'Ferrari'    ),
       ('FXX'                     , 'Ferrari'    ),
       ('250 gt lusso'            , 'Ferrari'    ),
       ('250 GTO'                 , 'Ferrari'    ),
       ('275 gtb'                 , 'Ferrari'    ),
       ('F430'                    , 'Ferrari'    ),
       ('430 scuderia'            , 'Ferrari'    ),
       ('458 Italie'              , 'Ferrari'    ),
       ('458 speciale'            , 'Ferrari'    ),
       ('360 modena'              , 'Ferrari'    ),
       ('488 pista'               , 'Ferrari'    ),
       ('288 GTO'                 , 'Ferrari'    ),
       ('F12 TDF'                 , 'Ferrari'    ),
       ('812 Superfast'           , 'Ferrari'    ),
       ('812 GTS'                 , 'Ferrari'    ),
       ('812 Competizione'        , 'Ferrari'    ),
       ('Enzo'                    , 'Ferrari'    ),
       ('LaFerrari'               , 'Ferrari'    ),
       ('SF 90 Stradale'          , 'Ferrari'    ),
       ('296 GTB'                 , 'Ferrari'    ),
       ('Purosangue'              , 'Ferrari'    ),
       ('FXXK'                    , 'Ferrari'    ),
       ('FXXK EVO'                , 'Ferrari'    ),
       ('Gallardo'                , 'Lamborghini'),
       ('Gallardo superleggera'   , 'Lamborghini'),
       ('Huracan'                 , 'Lamborghini'),
       ('Huracan EVO'             , 'Lamborghini'),
       ('Huracan performante'     , 'Lamborghini'),
       ('Huracan sto'             , 'Lamborghini'),
       ('Aventador'               , 'Lamborghini'),
       ('Aventador s'             , 'Lamborghini'),
       ('Aventador sv'            , 'Lamborghini'),
       ('Aventador svj'           , 'Lamborghini'),
       ('Veneno'                  , 'Lamborghini'),
       ('Urus'                    , 'Lamborghini'),
       ('Centenario'              , 'Lamborghini'),
       ('Miura'                   , 'Lamborghini'),
       ('Councach'                , 'Lamborghini'),
       ('Diablo'                  , 'Lamborghini'),
       ('400 gt'                  , 'Lamborghini'),
       ('Gran Turismo'            , 'Lamborghini'),
       ('Gran turismo Sport'      , 'Lamborghini'),
       ('Gran turismo mc stradale', 'Lamborghini'),
       ('Gran cabrio'             , 'Lamborghini'),
       ('MC 12'                   , 'Lamborghini'),
       ('MC 20'                   , 'Lamborghini'),
       ('Giulia Quadrifoglio '    , 'Alfa Romeo' ),
       ('Stelvio Quadrifoglio'    , 'Alfa Romeo' ),
       ('Zonda '                  , 'Pagani'     ),
       ('Huayra'                  , 'Pagani'     ),
       ('Zerouno'                 , 'Italdesign' ),
       ('Stratos'                 , 'Lancia'     ),
       ('P037'                    , 'Lancia'     ),
       ('Delta'                   , 'Lancia'     ),


-- COULEUR
INSERT INTO COULEUR (nomCouleur)
VALUES ('blanc'   ),
       ('noir'    ),
       ('rouge'   ),
       ('orange'  ),
       ('jaune'   ),
       ('vert'    ),
       ('bleu'    ),
       ('violet'  ),
       ('beige'   ),
       ('rose'    ),
       ('kaki'    ),
       ('marron'  ),
       ('bordeaux');


-- COULEUR_VOITURE
INSERT INTO COULEUR_VOITURE (idVoiture, nomCouleur)
VALUES (, ''),


-- PHOTO
INSERT INTO PHOTO (nomPhoto, datePhoto, idVoiture)
VALUES ('',  , ),