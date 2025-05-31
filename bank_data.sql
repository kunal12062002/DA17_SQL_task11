CREATE TABLE bank_fact (
    bank_pk VARCHAR PRIMARY KEY,
    bank_id INT NOT NULL,
    bank_name VARCHAR NOT NULL,
    branch_id INT NOT NULL,
    branch_name VARCHAR NOT NULL,
    fd_sales DECIMAL NOT NULL,
    rd_sales DECIMAL NOT NULL,
    ca_sales DECIMAL NOT NULL,
    sa_sales DECIMAL NOT NULL,
    life_insurance DECIMAL NOT NULL,
    general_insurance DECIMAL NOT NULL,
    mutual_fund DECIMAL NOT NULL
);

select * from bank_fact


CREATE TABLE customer_dim(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    age INT NOT NULL,
    city VARCHAR NOT NULL,
    account_type VARCHAR NOT NULL,
    account_status VARCHAR NOT NULL,
    bank_pk VARCHAR NOT NULL
);


select * from customer_dim

CREATE TABLE employee_dim (
    emp_id INT NOT NULL,
    emp_name VARCHAR NOT NULL,
    emp_salary DECIMAL(10,2) NOT NULL,
    emp_age INT NOT NULL,
    emp_dept VARCHAR NOT NULL,
    bank_pk VARCHAR NOT NULL  
);

select * from employee_dim

CREATE TABLE bank_account_info_dim (
    bank_pk VARCHAR,
    account_type VARCHAR NOT NULL,
    account_status VARCHAR NOT NULL
);

select * from bank_account_info_dim 


CREATE TABLE customer_account_info_dim (
    customer_id INT,
    fd_sales DECIMAL NOT NULL,
    rd_sales DECIMAL NOT NULL,
    ca_sales DECIMAL NOT NULL,
    sa_sales DECIMAL NOT NULL,
    life_insurance DECIMAL NOT NULL,
    general_insurance DECIMAL NOT NULL,
    demat_account BOOLEAN NOT NULL,
    mutual_fund DECIMAL NOT NULL,
    account_type VARCHAR NOT NULL,
    account_status VARCHAR NOT NULL,
    account_balance DECIMAL NOT NULL,
    credit_card_issued BOOLEAN NOT NULL,
    net_banking_enabled BOOLEAN NOT NULL,
    loan_account VARCHAR NOT NULL,
    kyc_status VARCHAR NOT NULL,
    last_transaction_amount DECIMAL NOT NULL
);


select * from customer_account_info_dim
