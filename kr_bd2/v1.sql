CREATE TABLE branch
(
    id_branch   serial primary key,
    city        varchar(25),
    name_branch varchar(45)
);


CREATE TYPE continents AS ENUM ('drivers_license', 'passport');

CREATE TABLE client
(
    id_client     serial primary key,
    fio_client    varchar(80) not null,
    document      continents,
    status_credit boolean,
    address       varchar(45),
    new_client    boolean
);


CREATE TABLE debt_payments
(
       id                serial primary key,
    id_client         int REFERENCES client (id_client),
    id_branch         int REFERENCES branch (id_branch),
    date_taking_loan  DATE,
    date_loan_closing DATE ,
    number_of_loans   int CHECK ( number_of_loans >= 0 and number_of_loans <= 5),
    loan_amount       int CHECK (loan_amount <= 50000 + (number_of_loans * 20000)),
    total_amount              numeric generated always as ( (loan_amount*(date_loan_closing - date_taking_loan))/100 + loan_amount ) stored
);

