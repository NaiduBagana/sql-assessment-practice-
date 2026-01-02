CREATE DATABASE BookStoreDB;
GO
USE BookStoreDB;
GO
CREATE TABLE publishers (
    pub_id CHAR(4) PRIMARY KEY,
    pub_name VARCHAR(50),
    city VARCHAR(30),
    state VARCHAR(20),
    country VARCHAR(20)
);
GO

CREATE TABLE titles (
    title_id CHAR(6) PRIMARY KEY,
    title VARCHAR(100),
    type VARCHAR(30),
    pub_id CHAR(4),
    price DECIMAL(6,2),
    sales INT,
    royalty INT,
    pubdate DATE,
    FOREIGN KEY (pub_id) REFERENCES publishers(pub_id)
);
GO

CREATE TABLE authors (
    author_id CHAR(5) PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(20)
);
GO

CREATE TABLE title_author (
    author_id CHAR(5),
    title_id CHAR(6),
    au_order INT,
    royalty_per INT,
    PRIMARY KEY (author_id, title_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);
GO

INSERT INTO publishers VALUES
('0736','TechBooks','New York','NY','USA'),
('0877','BizWorld','Boston','MA','USA'),
('0911','GlobalPub','London',NULL,'UK');

INSERT INTO titles VALUES
('BU1111','Business Basics','business','0877',20,15000,15,'2019-06-01'),
('MC2222','Mind Control','psychology','0736',25,8000,18,'2021-03-15'),
('CS3333','Coding Stars','tech','0736',30,12000,25,'2022-01-10'),
('UN4444','Unknown Paths',NULL,'0911',NULL,3000,10,'2018-08-20');

INSERT INTO authors VALUES
('A1','Sam','Smith','Menlo Park','CA'),
('A2','Sara','Stone','Menlo Park','CA'),
('A3','John','Doe','Boston','MA'),
('A4','Dean','Brown','Chicago','IL');

INSERT INTO title_author VALUES
('A1','BU1111',1,10),
('A1','MC2222',2,12),
('A2','CS3333',1,15),
('A3','BU1111',1,10);
GO

select * from publishers;

GO