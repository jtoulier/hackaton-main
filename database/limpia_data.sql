DELETE FROM group1.virtual_card;
DELETE FROM group1.available_card;
DELETE FROM group1.credit_line;
DELETE FROM group1.customer;

/* -------------------------------------------------------------------------- */
-- Insertar registros
/* -------------------------------------------------------------------------- */
INSERT INTO group1.customer VALUES ('20070913', '111111', 'ZAMORA', 'LEON', 'TANIA');
INSERT INTO group1.customer VALUES ('09349291', '111111', 'SANTANA', 'CAUNA', 'YASMIN');

INSERT INTO group1.credit_line (dni, authorized_amount, used_amount) VALUES ('20070913', 7000, 2780);
INSERT INTO group1.credit_line (dni, authorized_amount, used_amount) VALUES ('09349291', 15800, 3970);

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


INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('20070913', '4280780012858941', '2020-12-18', 810, 457.23, '839');
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('20070913', '4280780082269845', '2021-01-25', 650, 321, '845');

INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('20070913', '4280780035007092', '2021-02-28', 1140, 0, '667');
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('20070913', '4280780086828337', '2021-03-15', 350, 85.5, '405');
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('20070913', '4280780040409854', '2021-04-08', 2730, 551.20, '627');

INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('09349291', '4557890003253196', '2020-11-27', 2500, 2500, '596');
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('09349291', '4557890007507258', '2021-01-05', 590, 80.23, '860');

INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('09349291', '4557890002443594', '2021-03-09', 930, 771.21, '022');
INSERT INTO group1.virtual_card (dni, card_number, expiration_date, authorized_amount, used_amount, cvv) VALUES ('09349291', '4557890007438406', '2021-04-28', 2500, 888.50, '649');
