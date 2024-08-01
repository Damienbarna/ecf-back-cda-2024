CREATE TABLE mcmorning (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL
);

INSERT INTO mcmorning (nom, prix) VALUES
('x2_Pancake', 2.30),
('Bacon_Eggs', 2.50),
('Mc_Griddles', 2.30),
('Bacon_eggs', 2.50),
('Egg_Cheese', 2.30);

CREATE TABLE Desserts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES Mcmorning(id)
);

INSERT INTO Desserts (nom, prix) VALUES
('Berlingo', 1,60),
('Bio a boire', 1,50),
('Ananas a croquer', 1,60),
('Fruit croquer', 1,60);


CREATE TABLE Snacks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES Mcmorning(id)
);

INSERT INTO Snacks (nom, prix) VALUES
('Cookue choco', 2.50),
('Brownie', 2),
('Mcflurry', 3.20),
('FlurryParty van', 8,90),
('sundae', 2.50),
('parfait', 3,20);


CREATE TABLE Boissons (
  id INT PRIMARY KEY AUTO_INCREMENT,
  
);

CREATE TABLE Eau_Mineral (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES boissons(id)
)


INSERT INTO Eau_Mineral (nom, prix) VALUES
('Badoit 50cl', 2.70),
('Badoit 33cl', 2.30),
('Evian 50', 2.70),
('evian 33', 2.50),


CREATE TABLE Bière (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES boissons(id)
)

INSERT INTO Bière (nom, prix) VALUES
('Biere 33', 2.50),
('Biere 50', 2.70),
('Biere 66', 2.90),
('Biere 80', 3.20);


CREATE TABLE Jus_orange (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES boissons(id)
)

INSERT INTO Jus_orange (nom, prix) VALUES
('Jus orange 33', 2.50),
('Jus orange 50', 2.70),
('Jus orange 66', 2.90),
('Jus orange 80', 3.20);


CREATE TABLE Boisson_chaude (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES boissons(id)
)

INSERT INTO Boisson_chaude (nom, prix) VALUES
('the earl grey', 2.20),
('Noisette', 2.70),
('Ristretto', 2.50),
('Chocolat', 3),
('Capuccino', 2.50),
('double late', 4),

CREATE TABLE Potatoes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,

)

INSERT INTO Potatoes (nom, prix) VALUES
('Potatoes grand', 2.90),
('Potatoes moyen', 2.50),
('Potatoes petit', 2.10),

CREATE TABLE Frites (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  
)

INSERT INTO Frites (nom, prix) VALUES
('Frites grand', 3.20),
('Frites Moyen', 2.50),
('Frites Petit', 2.10),


CREATE TABLE Menus (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  
)

INSERT INTO Menus (nom, prix) VALUES
('DUO salade', 8),


CREATE TABLE MXBOF (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES Menus(id)
)

INSERT INTO MXBOF (nom, prix) VALUES
('MXBOF double filet', 10),
('MXBOF filet', 8),
('MXBOF big tasty', 10),
('MXBOF double filet', 8),
('MXBOF filet', 10),
('MXBOF beef', 10),
('MXBOF double beef', 7),
('MXBOF chiken', 10),
('MXBOF massinissa', 6),
('MXBOF royalbacon', 5),
('MXBOF double royalbacon', 9.20),

CREATE TABLE BOF (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES Menus(id)
)

INSERT INTO BOF (nom, prix) VALUES
('BOF double filet', 10),
('BOF filet', 8),
('BOF big tasty', 10),
('BOF double filet', 8),
('BOF filet', 19),
('BOF beef', 10),
('BOF double beef', 7),
('BOF chiken', 10),
('BOF massinissa', 6),


CREATE TABLE Sandwitch (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  
)

INSERT INTO Sandwitch (nom, prix) VALUES
('Sandwitch', 3),
('Sandwitch', 3),
('Sandwitch', 3),
('Sandwitch', 3),
('Sandwitch', 3),
('Sandwitch', 3),
('Sandwitch', 3),

CREATE TABLE Nuggets (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  FOREIGN KEY (id) REFERENCES Menus(id)
)

INSERT INTO Nuggets (nom, prix) VALUES
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),

CREATE TABLE Nuggets (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  
)

INSERT INTO Nuggets (nom, prix) VALUES
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),
('Nuggets', 3),


CREATE TABLE  McCafe (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
 
)

INSER INTO McCafe (nom, prix) VALUES
('McCafe', 3),
('McCafe', 3),
('McCafe', 3),
('McCafe', 3),
('McCafe', 3),
('McCafe', 3),
('McCafe', 3),

CREATE TABLE Salad_Bar (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,
  
)

INSER into Salad Bar (nom, prix) VALUES
('Salad Bar', 3),
('Salad Bar', 3),
('Salad Bar', 3),
('Salad Bar', 3),
('Salad Bar', 3),
('Salad Bar', 3),
('Salad Bar', 3),

CREATE TABLE salad_Bar_Menu (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(4,2) NOT NULL,

)

INSERT INTO salad_Bar_Menu (nom, prix) VALUES
('salad_Bar_Menu', 3),
('salad_Bar_Menu', 3),
('salad_Bar_Menu', 3),
('salad_Bar_Menu', 3),
('salad_Bar_Menu', 3),
('salad_Bar_Menu', 3),
('salad_Bar_Menu', 3),










