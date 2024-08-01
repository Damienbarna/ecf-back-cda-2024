CREATE DATABASE Mcdo_Souillac;

USE Mcdo_Souillac;

-- Table des clients
CREATE TABLE Clients (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);

-- Table des employés
CREATE TABLE Employes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);

-- Table des articles
CREATE TABLE Articles (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255) NOT NULL,
  prix DECIMAL(5,2) NOT NULL
);

-- Table des commandes
CREATE TABLE Commandes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  client_id INT,
  date_commande DATETIME DEFAULT CURRENT_TIMESTAMP,
  statut VARCHAR(50) DEFAULT 'En cours',
  FOREIGN KEY (client_id) REFERENCES Clients(id)
);

-- Table des articles dans les commandes
CREATE TABLE Commande_Articles (
  commande_id INT,
  article_id INT,
  quantite INT NOT NULL,
  PRIMARY KEY (commande_id, article_id),
  FOREIGN KEY (commande_id) REFERENCES Commandes(id),
  FOREIGN KEY (article_id) REFERENCES Articles(id)
);

-- Insertion des données d'exemple
INSERT INTO Clients (nom, email) VALUES
('Jean Dupont', 'jean.dupont@example.com'),
('Marie Curie', 'marie.curie@example.com');

INSERT INTO Employes (nom, email) VALUES
('Paul Martin', 'paul.martin@example.com'),
('Sophie Durand', 'sophie.durand@example.com');

INSERT INTO Articles (nom, prix) VALUES
('Big Mac', 5.50),
('Cheeseburger', 2.30),
('Frites', 1.50),
('Coca-Cola', 1.20);

INSERT INTO Commandes (client_id, statut) VALUES
(1, 'En cours'),
(2, 'Validée');

INSERT INTO Commande_Articles (commande_id, article_id, quantite) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(2, 4, 2);