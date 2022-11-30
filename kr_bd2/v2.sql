INSERT INTO branch(city, name_branch) VALUES ('Москва', 'ВТБ');
INSERT INTO branch(city, name_branch) VALUES ('Питер','ТехноБанк');
INSERT INTO branch(city, name_branch) VALUES ('Казань','АкБарс');
INSERT INTO branch(city, name_branch) VALUES ('Пермь','ВТБ');

INSERT INTO client(fio_client, document,status_credit, address, new_client) VALUES ('Алексеев Георгий Маркович','passport',true,'ул. Семиозерская',false);
INSERT INTO client(fio_client, document,status_credit, address, new_client) VALUES ('Сухарева Варвара Фёдоровна','drivers_license',true,'ул. Ахмерова',false);
INSERT INTO client(fio_client, document,status_credit, address, new_client) VALUES ('Новикова Алиса Михайловна','drivers_license',false,'ул. Ершова',true);
INSERT INTO client(fio_client, document,status_credit, address, new_client) VALUES ('Баженов Илья Денисович','passport',true,'ул. Катапульты',false);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('4','2','2022-12-05','2023-01-11',2, 30000);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('3','1','2022-12-06','2022-12-17',5, 12900);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('1','3','2022-12-02','2022-12-23',4, 62400);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('4','4','2022-12-15','2022-12-29',1, 50900);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('2','3','2022-12-08','2022-12-12',3, 33900);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('1','2','2022-12-01','2022-12-31',2, 62900);

INSERT INTO debt_payments( id_client, id_branch, date_taking_loan, date_loan_closing, number_of_loans, loan_amount)
VALUES ('2','1','2022-12-01','2023-03-22',2, 65900);