CREATE TABLE Auteur(
   Id_Auteur INT,
   Nom_Auteur VARCHAR(50) NOT NULL,
   Prénom_Auteur VARCHAR(50) NOT NULL,
   Biographie_Auteur VARCHAR(1500),
   PRIMARY KEY(Id_Auteur)
);

CREATE TABLE Editeur(
   Id_Editeur INT,
   Nom_Editeur VARCHAR(50) NOT NULL,
   Email_Contact_Editeur VARCHAR(100),
   PRIMARY KEY(Id_Editeur),
   CONSTRAINT chk_email_edit_format CHECK (Email_Contact_Editeur LIKE '%@%.%')
);

CREATE TABLE Client(
   Num_Client INT,
   Nom_Client VARCHAR(50) NOT NULL,
   Prenom_Client VARCHAR(50) NOT NULL,
   Date_Début_Abo DATE,
   Date_Fin_Abo DATE,
   Email_Client VARCHAR(200) NOT NULL,
   Adresse_Postale_Client VARCHAR(200),
   Téléphone_Client VARCHAR(15), 
   PRIMARY KEY(Num_Client),
   CONSTRAINT chk_dates_abo CHECK (Date_Fin_Abo >= Date_Début_Abo),
   CONSTRAINT chk_email_cli_format CHECK (Email_Client LIKE '%@%.%'),
   CONSTRAINT chk_tel_longueur CHECK (LENGTH(Téléphone_Client) >= 10)
);

CREATE TABLE Vente(
   Num_Ticket VARCHAR(50),
   Date_Vente DATE DEFAULT CURRENT_DATE NOT NULL,
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
   Quantité_Stock_Vente INT DEFAULT 0 NOT NULL,
   Genre_Littéraire VARCHAR(50) NOT NULL,
   Langue VARCHAR(50) DEFAULT 'Français' NOT NULL,
   Id_Editeur INT NOT NULL,
   PRIMARY KEY(ISBN),
   FOREIGN KEY(Id_Editeur) REFERENCES Editeur(Id_Editeur),
   CONSTRAINT chk_prix_vente CHECK (Prix_Vente >= 0),
   CONSTRAINT chk_stock CHECK (Quantité_Stock_Vente >= 0),
   CONSTRAINT chk_format CHECK (Format_Livre IN ('Poche', 'Broché', 'Relié', 'Audio', 'Pléiade')),
   CONSTRAINT chk_isbn_longueur CHECK (LENGTH(ISBN) = 13)
);

CREATE TABLE Exemplaire(
   Code_Barre_Interne VARCHAR(50),
   Etat VARCHAR(50) DEFAULT 'Neuf' NOT NULL,
   Date_Acquisition DATE DEFAULT CURRENT_DATE,
   ISBN VARCHAR(13) NOT NULL,
   PRIMARY KEY(Code_Barre_Interne),
   FOREIGN KEY(ISBN) REFERENCES Livre(ISBN),
   CONSTRAINT chk_etat_exemplaire CHECK (Etat IN ('Neuf', 'Bon', 'Passable', 'Abîmé', 'Perdu'))
);

CREATE TABLE Emprunt(
   Ref_Emprunt VARCHAR(50),
   Date_Début_Emprunt DATE DEFAULT CURRENT_DATE NOT NULL,
   Date_Retour_Prevue DATE NOT NULL,
   Etat_Physique_Départ VARCHAR(50) NOT NULL,
   Date_Retour_Effective DATE,
   Etat_Physique_Retour VARCHAR(50),
   Num_Client INT NOT NULL,
   Code_Barre_Interne VARCHAR(50) NOT NULL,
   PRIMARY KEY(Ref_Emprunt),
   FOREIGN KEY(Num_Client) REFERENCES Client(Num_Client),
   FOREIGN KEY(Code_Barre_Interne) REFERENCES Exemplaire(Code_Barre_Interne),
   CONSTRAINT chk_dates_emprunt_prevue CHECK (Date_Retour_Prevue >= Date_Début_Emprunt),
   CONSTRAINT chk_dates_emprunt_effective CHECK (Date_Retour_Effective >= Date_Début_Emprunt),
   CONSTRAINT chk_etat_depart CHECK (Etat_Physique_Départ IN ('Neuf', 'Bon', 'Passable', 'Abîmé', 'Perdu')),
   CONSTRAINT chk_etat_retour CHECK (Etat_Physique_Retour IN ('Neuf', 'Bon', 'Passable', 'Abîmé', 'Perdu'))
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
   Quantité_Vendue INT DEFAULT 1 NOT NULL,
   PRIMARY KEY(ISBN, Num_Ticket),
   FOREIGN KEY(ISBN) REFERENCES Livre(ISBN),
   FOREIGN KEY(Num_Ticket) REFERENCES Vente(Num_Ticket),
   CONSTRAINT chk_qte_vendue CHECK (Quantité_Vendue > 0)
);
