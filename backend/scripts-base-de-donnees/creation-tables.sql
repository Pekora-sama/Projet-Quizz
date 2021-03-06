CREATE DOMAIN Dval tinyint check(@col between 0 and 1);

create table questions (
    qId Integer not null DEFAULT autoincrement,
    quest char(100) not null,
    constraint pk_questions PRIMARY KEY (qId),
);

create table valeurs(
    valeur Dval not null,
    signification char(20),
    constraint pk_valeurs primary key (valeur),
);

create table choix (
    cId Integer not null DEFAULT autoincrement,
    reponse char(50) not null,
    valeur Dval not null,
    qId integer not null,
    constraint pk_choix primary key (cId),
    constraint fk_choix_questions foreign key (qId) REFERENCES questions (qId),
    constraint fk_choix_valeurs foreign key (valeur) REFERENCES valeurs (valeur),
);

create table resultats( 
    tId integer not null default autoincrement,
    titres char(100) not null,
    points integer not null,
    constraint pk_resultats primary key (tId),
);
