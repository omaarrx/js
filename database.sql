CREATE DATABASE perntodo;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    senior_request BOOLEAN DEFAULT false,
    PRIMARY KEY (id)
);  

  CREATE TABLE admin(
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
  );
  
  CREATE TABLE senior(
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
  );
  
  CREATE TABLE ticket(
    ticket_id INT NOT NULL AUTO_INCREMENT,
    ticket_sub VARCHAR(50),
    ticket_status VARCHAR(50) NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ticket_id)
    );
  
  CREATE TABLE login(
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (username)
    );
    
    CREATE TABLE zone(
      zone_name VARCHAR(50) NOT NULL,
      destination VARCHAR(50) NOT NULL,
      arrival_time DATETIME,
      dept_time DATETIME,
      PRIMARY KEY (zone_name)
    );
    
    CREATE TABLE login(
      username VARCHAR(50)
      password VARCHAR(50)
      PRIMARY KEY (username)
      );
    
    
    CREATE VIEW upcoming_tickets AS
    SELECT ticket_status
    FROM ticket
    WHERE ticket_status LIKE upcoming
    
    CREATE VIEW completed_tickets AS
    SELECT ticket_status
    FROM ticket
    WHERE ticket_status LIKE completed
    
    CREATE VIEW sub_tickets AS
    SELECT ticket_sub
    FROM ticket