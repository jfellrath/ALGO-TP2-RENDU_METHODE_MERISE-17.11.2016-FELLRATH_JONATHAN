create table CLIENT (ID_CLIENT int not null,
                               NOM char(30) not null,
                               PRENOM char(30) not null,
                               ADRESSE char(30) not null,
                primary key(ID_CLIENT));
				
				
create table PRODUIT (ID_CODEPRODUIT int not null,
                                  LIBELLE char(30) not null,
                                  PRIXUNITAIRE decimal(10) not null,
                primary key(ID_PRODUT));
				
				
				
create table COMMANDE (ID_COMMANDE int not null,
                                  DATE_COMMANDE date not null,
                                  ADRESSE_LIVRAISON char(30) not null,
                                  QUANTITE int not null,
                                  ID_CLIENT int not nll,
                                  ID_CODEPRODUIT int not null,
                primary key(ID_COMMANDE),
                foreign key (ID_CODEPRODUIT),
                foreign key (ID_CLIENT));