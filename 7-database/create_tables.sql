CREATE TABLE Groupp (
    id SERIAL PRIMARY KEY, 
    name CHAR(30)
);

CREATE TABLE Userr (
    id SERIAL PRIMARY KEY, 
    name CHAR(100), 
    credit_card INTEGER, 
    email CHAR(100), 
    Password CHAR(30)
);

CREATE TABLE Userr_Groupp (
    id_Group INTEGER, 
    id_User INTEGER, 
    is_admin BOOLEAN,
    PRIMARY KEY (Id_Group, Id_User)
);

CREATE TABLE Sport (
    id SERIAL PRIMARY KEY, 
    category CHAR(30), 
    max_players INTEGER, 
    min_players INTEGER
);

CREATE TABLE Favorite_Sport (
    id_User INTEGER, 
    id_Sport INTEGER,
    PRIMARY KEY (Id_User, Id_Sport)
);

CREATE TABLE Company (
    id SERIAL PRIMARY KEY, 
    name CHAR(100), 
    cnpj INTEGER, 
    address CHAR(100)
);

CREATE TABLE Rating (
    id_User INTEGER, 
    id_Company INTEGER, 
    score INTEGER,
    PRIMARY KEY (Id_User, Id_Company)
);

CREATE TABLE Company_Sport (
    id_Company INTEGER, 
    id_Sport INTEGER,
    PRIMARY KEY (Id_Company, Id_Sport)
);

CREATE TABLE Match (
    id SERIAL PRIMARY KEY, 
    Date TIMESTAMP, 
    result_0 INTEGER, 
    result_1 INTEGER, 
    id_Company INTEGER, 
    id_Sport INTEGER
);

CREATE TABLE Plays (
    id_User INTEGER, 
    id_Match INTEGER, 
    team BOOLEAN,
    PRIMARY KEY (Id_User, Id_Match)
);

CREATE TABLE Payment (
    id SERIAL PRIMARY KEY, 
    price NUMERIC, 
    deadline TIMESTAMP, 
    status CHAR(10), 
    method CHAR(10), 
    id_Match INTEGER
);
 
ALTER TABLE Userr_Groupp ADD CONSTRAINT FK_1_User_Groupp
FOREIGN KEY (Id_Group) 
REFERENCES Groupp(id);
 
ALTER TABLE Userr_Groupp ADD CONSTRAINT FK_2_User_Groupp
FOREIGN KEY (Id_User) 
REFERENCES Userr(id);
 
ALTER TABLE Favorite_Sport ADD CONSTRAINT FK_1_Favorite_Sport
FOREIGN KEY (Id_User) 
REFERENCES Userr(id);
 
ALTER TABLE Favorite_Sport ADD CONSTRAINT FK_2_Favorite_Sport
FOREIGN KEY (Id_Sport) 
REFERENCES Sport(id);
 
ALTER TABLE Rating ADD CONSTRAINT FK_1_Rating
FOREIGN KEY (Id_User) 
REFERENCES Userr(id);
 
ALTER TABLE Rating ADD CONSTRAINT FK_2_Rating
FOREIGN KEY (Id_Company) 
REFERENCES Company(id);
 
ALTER TABLE Company_Sport ADD CONSTRAINT FK_1_Company_Sport
FOREIGN KEY (Id_Company) 
REFERENCES Company(id);
 
ALTER TABLE Company_Sport ADD CONSTRAINT FK_2_Company_Sport
FOREIGN KEY (Id_Sport) 
REFERENCES Sport(id);
 
ALTER TABLE Match ADD CONSTRAINT FK_1_Match
FOREIGN KEY (Id_Company) 
REFERENCES Company(id);
 
ALTER TABLE Match ADD CONSTRAINT FK_2_Match
FOREIGN KEY (Id_Sport) 
REFERENCES Sport(id);
 
ALTER TABLE Plays ADD CONSTRAINT FK_1_Plays
FOREIGN KEY (Id_User) 
REFERENCES Userr(id);
 
ALTER TABLE Plays ADD CONSTRAINT FK_2_Plays
FOREIGN KEY (Id_Match) 
REFERENCES Match(id);
 
ALTER TABLE Payment ADD CONSTRAINT FK_Payment
FOREIGN KEY (Id_Match) 
REFERENCES Match(id);
