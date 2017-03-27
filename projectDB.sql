CREATE TABLE IF NOT EXISTS members (
  uname VARCHAR(30) NOT NULL,
  pass VARCHAR(30) NOT NULL,
  email VARCHAR(20) NOT NULL PRIMARY KEY,
  number VARCHAR(30) NOT NULL
);
INSERT INTO members(uname, pass, email, number) values('May','1234','m@gmail.com','4321'  );

