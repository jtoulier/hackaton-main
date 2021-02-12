/* -------------------------------------------------------------------------- */
-- Creacion de esquema de Grupo 1
/* -------------------------------------------------------------------------- */
CREATE SCHEMA group1;

/* -------------------------------------------------------------------------- */
-- Creacion de objetos dentro de la BD
/* -------------------------------------------------------------------------- */

CREATE TABLE group1.customer
(
    dni             char(8) NOT NULL,
    password        varchar(50) NOT NULL,
    first_surname   varchar(50) NOT NULL,
    second_surname  varchar(50) NULL,
    given_name      varchar(50) NOT NULL,

    CONSTRAINT pk_cus PRIMARY KEY CLUSTERED (dni ASC)
);

CREATE TABLE group1.available_card
(
    card_number char(16) NOT NULL,
    cvv         char(3) NOT NULL,
    available   char(1) NOT NULL,

    CONSTRAINT pk_avacar PRIMARY KEY CLUSTERED (card_number ASC)
);


CREATE TABLE group1.credit_line
(
    id                  int IDENTITY(1, 1) NOT NULL,
    dni                 char(8) NOT NULL,
    authorized_amount   numeric(8, 2) NOT NULL,
    used_amount         numeric(8, 2) NOT NULL,

    CONSTRAINT pk_crline PRIMARY KEY CLUSTERED (id ASC),

    CONSTRAINT fk_cus_crline FOREIGN KEY (dni) REFERENCES group1.customer (dni)
);


CREATE TABLE group1.virtual_card
(
    id                  int IDENTITY(1, 1) NOT NULL,
    dni                 char(8) NOT NULL,
    card_number         char(16) NOT NULL,
    expiration_date     date NOT NULL,
    authorized_amount   numeric(8, 2) NOT NULL,
    used_amount         numeric(8, 2) NOT NULL,

    CONSTRAINT pk_vcar PRIMARY KEY CLUSTERED (id ASC),

    CONSTRAINT fk_cus_vcar FOREIGN KEY (dni) REFERENCES group1.customer (dni),
    CONSTRAINT fk_avacar_vcar FOREIGN KEY (card_number) REFERENCES group1.available_card (card_number)
);


/* -------------------------------------------------------------------------- */
-- Insertar registros
/* -------------------------------------------------------------------------- */
INSERT INTO group1.customer VALUES ('20070913', '111111', 'ZAMORA', 'LEON', 'TANIA');
INSERT INTO group1.customer VALUES ('09349291', '111111', 'SANTANA', 'CAUNA', 'YASMIN');

INSERT INTO group1.credit_line (dni, authorized_amount, used_amount) VALUES ('20070913', 7000, 636.7);
INSERT INTO group1.credit_line (dni, authorized_amount, used_amount) VALUES ('09349291', 15800, 1659.71);

INSERT INTO group1.available_card VALUES ('4280780012858941', '839', 'Y');
INSERT INTO group1.available_card VALUES ('4280780082269845', '845', 'Y');
INSERT INTO group1.available_card VALUES ('4557890003253196', '596', 'Y');
INSERT INTO group1.available_card VALUES ('4557890007507258', '860', 'Y');
INSERT INTO group1.available_card VALUES ('4557890000217272', '680', 'Y');

INSERT INTO group1.available_card VALUES ('4280780035007092', '667', 'N');
INSERT INTO group1.available_card VALUES ('4280780086828337', '405', 'N');
INSERT INTO group1.available_card VALUES ('4280780040409854', '627', 'N');
INSERT INTO group1.available_card VALUES ('4557890002443594', '022', 'N');
INSERT INTO group1.available_card VALUES ('4557890007438406', '649', 'N');


INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('20070913', '4280780012858941', '2020-12-18', 810, 457.23);
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('20070913', '4280780082269845', '2021-01-25', 650, 321);

INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('20070913', '4280780035007092', '2021-02-28', 1140, 0);
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('20070913', '4280780086828337', '2021-03-15', 350, 85.5);
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('20070913', '4280780040409854', '2021-04-08', 2730, 551.20);

INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('09349291', '4557890003253196', '2020-11-27', 2500, 2500);
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('09349291', '4557890007507258', '2021-01-05', 590, 80.23);

INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('09349291', '4557890002443594', '2021-03-09', 930, 771.21);
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount) VALUES ('09349291', '4557890007438406', '2021-04-28', 2500, 888.50);
