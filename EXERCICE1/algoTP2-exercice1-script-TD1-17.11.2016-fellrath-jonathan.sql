create table CLIENT( ID_CLIENT int not null,
                               NOM char(30) not null,
                               PRENOM char(30) not null,
                               ADRESSE  char(30) not null,
                    primary key (ID_CLIENT));
					 
					 
					 
create table COMPTE (ID_COMPTE int not null,
                                SOLDE, int no null,
                    primary key(ID_COMPTE));
					 
					 
create table SIGNATAIRE (ID_SIGNATAIRE int not null,
                                       ID_CLIENT int not null,
                                       ID_COMPTE int not null,
                    primary key(ID_SIGNATAIRE),
                    foreign key(ID_CLIENT),
                    foreign key(ID_COMPTE));
						 
						 
create table OPERATION_EFFECTUEE (ID_OPERATION int not null,
                                       DATE date not null,
                                       MONTANT int not null,
                                       RETRAIT char(12) null,
                                       DEPOT char(12) null,
                    primary key (ID_OPERATION),
                    foreign key (ID_CLIENT));