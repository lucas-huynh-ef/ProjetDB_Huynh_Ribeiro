CREATE TABLE Auteur(
   Id_Auteur INT,
   Nom_Auteur VARCHAR(50) NOT NULL,
   Prénom_Auteur VARCHAR(50) NOT NULL,
   Biographie_Auteur VARCHAR(1500),
   PRIMARY KEY(Id_Auteur)
);

CREATE TABLE Editeur(
   Id_Editeur VARCHAR(50),
   Nom_Editeur VARCHAR(50) NOT NULL,
   Email_Contact_Editeur VARCHAR(50),
   PRIMARY KEY(Id_Editeur)
);

CREATE TABLE Client(
   Num_Client INT,
   Nom_Client VARCHAR(50) NOT NULL,
   Prenom_Client VARCHAR(50) NOT NULL,
   Date_Fin_Abo DATE,
   Date_Début_Abo DATE,
   Email_Client VARCHAR(200) NOT NULL,
   Adresse_Postale_Client VARCHAR(200),
   Téléphone_Client INT,
   PRIMARY KEY(Num_Client)
);

CREATE TABLE Vente(
   Num_Ticket VARCHAR(50),
   Date_Vente DATE NOT NULL,
   Num_Client INT,
   PRIMARY KEY(Num_Ticket),
   FOREIGN KEY(Num_Client) REFERENCES Client(Num_Client)
);

CREATE TABLE Livre(
   ISBN VARCHAR(13),
   Titre VARCHAR(150) NOT NULL,
   Date_Publication DATE NOT NULL,
   Résumé VARCHAR(1500),
   Prix_Vente DECIMAL(5,2) NOT NULL,
   Format_Livre VARCHAR(50) NOT NULL,
   Quantité_Stock_Vente INT NOT NULL,
   Genre_Littéraire VARCHAR(50) NOT NULL,
   Langue VARCHAR(50) NOT NULL,
   Id_Editeur VARCHAR(50) NOT NULL,
   PRIMARY KEY(ISBN),
   FOREIGN KEY(Id_Editeur) REFERENCES Editeur(Id_Editeur)
);

CREATE TABLE Exemplaire(
   Code_Barre_Interne VARCHAR(50),
   Etat VARCHAR(50) NOT NULL,
   Date_Acquisition DATE,
   ISBN VARCHAR(13) NOT NULL,
   PRIMARY KEY(Code_Barre_Interne),
   FOREIGN KEY(ISBN) REFERENCES Livre(ISBN)
);

CREATE TABLE Emprunt(
   Ref_Emprunt VARCHAR(50),
   Date_Début_Emprunt DATE NOT NULL,
   Date_Retour_Prevue DATE NOT NULL,
   Etat_Physique_Départ VARCHAR(50) NOT NULL,
   Date_Retour_Effective DATE,
   Etat_Physique_Retour VARCHAR(50),
   Num_Client INT NOT NULL,
   Code_Barre_Interne VARCHAR(50) NOT NULL,
   PRIMARY KEY(Ref_Emprunt),
   FOREIGN KEY(Num_Client) REFERENCES Client(Num_Client),
   FOREIGN KEY(Code_Barre_Interne) REFERENCES Exemplaire(Code_Barre_Interne)
);

CREATE TABLE Ecrit_Par(
   ISBN VARCHAR(13),
   Id_Auteur INT,
   PRIMARY KEY(ISBN, Id_Auteur),
   FOREIGN KEY(ISBN) REFERENCES Livre(ISBN),
   FOREIGN KEY(Id_Auteur) REFERENCES Auteur(Id_Auteur)
);

CREATE TABLE Composé_De(
   ISBN VARCHAR(13),
   Num_Ticket VARCHAR(50),
   Quantité_Vendue INT NOT NULL,
   PRIMARY KEY(ISBN, Num_Ticket),
   FOREIGN KEY(ISBN) REFERENCES Livre(ISBN),
   FOREIGN KEY(Num_Ticket) REFERENCES Vente(Num_Ticket)
);
