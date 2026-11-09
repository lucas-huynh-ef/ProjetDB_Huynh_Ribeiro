--Requête 1 – Afficher les livres avec leur titre, leur prix et leur genre, classés par prix croissant.
SELECT Titre, Prix_Vente, Genre_Littéraire
FROM Livre
ORDER BY Prix_Vente ASC;


--Requête 2 – Afficher les différentes langues disponibles dans la librairie, sans doublons.
SELECT DISTINCT Langue
FROM Livre
ORDER BY Langue;


--Requête 3 – Rechercher les livres dont le titre contient le mot « Harry ».
SELECT ISBN, Titre, Prix_Vente
FROM Livre
WHERE Titre LIKE '%Harry%';


--Requête 4 – Afficher les livres dont le prix est compris entre 10 et 25 euros.
SELECT Titre, Prix_Vente
FROM Livre
WHERE Prix_Vente BETWEEN 10 AND 25
ORDER BY Prix_Vente DESC;


--Requête 5 – Afficher les livres appartenant aux genres Roman, Policier ou Science-fiction.
SELECT Titre, Genre_Littéraire, Langue
FROM Livre
WHERE Genre_Littéraire IN ('Science-Fiction', 'Classique', 'Poésie');


--Requête 6 – Compter le nombre de livres disponibles dans chaque genre littéraire.
SELECT Genre_Littéraire, COUNT(*) AS Nombre_Livres
FROM Livre
GROUP BY Genre_Littéraire;


--Requête 7 – Calculer le prix moyen des livres pour chaque genre littéraire.
SELECT Genre_Littéraire, AVG(Prix_Vente) AS Prix_Moyen
FROM Livre
GROUP BY Genre_Littéraire;


--Requête 8 – Afficher les genres littéraires dont le prix moyen des livres dépasse 20 euros.
SELECT Genre_Littéraire, AVG(Prix_Vente) AS Prix_Moyen
FROM Livre
GROUP BY Genre_Littéraire
HAVING AVG(Prix_Vente) > 20;


--Requête 9 – Calculer le chiffre d'affaires réalisé pour chaque livre vendu.
SELECT ISBN, SUM(Quantité_Vendue) AS Quantite_Totale, SUM(Quantité_Vendue * Prix_Vente) AS Chiffre_Affaires
FROM Composé_De
INNER JOIN Livre USING (ISBN)
GROUP BY ISBN;


--Requête 10 – Afficher les clients ayant effectué au moins 3 emprunts.
SELECT Num_Client, COUNT(*) AS Nombre_Emprunts
FROM Emprunt
GROUP BY Num_Client
HAVING COUNT(*) >= 3;

  
--Requête 11 – Afficher chaque livre avec le nom de son éditeur.
SELECT L.Titre, L.ISBN, E.Nom_Editeur
FROM Livre L
INNER JOIN Editeur E
ON L.Id_Editeur = E.Id_Editeur;


--Requête 12 – Afficher les titres des livres avec le nom et le prénom de leurs auteurs.
SELECT L.Titre, A.Nom_Auteur, A.Prénom_Auteur
FROM Livre L
INNER JOIN Ecrit_Par EP
ON L.ISBN = EP.ISBN
INNER JOIN Auteur A
ON EP.Id_Auteur = A.Id_Auteur;


--Requête 13 – Afficher tous les clients, même ceux qui n'ont jamais effectué d'emprunt.
SELECT C.Num_Client, C.Nom_Client, C.Prenom_Client, E.Ref_Emprunt
FROM Client C
LEFT JOIN Emprunt E
ON C.Num_Client = E.Num_Client;


--Requête 14 – Afficher tous les livres et leurs exemplaires, y compris les livres qui ne possèdent aucun exemplaire.
SELECT L.Titre, L.ISBN, EX.Code_Barre_Interne, EX.Etat
FROM Livre L
LEFT JOIN Exemplaire EX
ON L.ISBN = EX.ISBN;


--Requête 15 – Afficher les ventes avec le nom du client et les livres achetés.
SELECT V.Num_Ticket, V.Date_Vente, C.Nom_Client, C.Prenom_Client, L.Titre, CD.Quantité_Vendue
FROM Vente V
INNER JOIN Client C
ON V.Num_Client = C.Num_Client
INNER JOIN Composé_De CD
ON V.Num_Ticket = CD.Num_Ticket
INNER JOIN Livre L
ON CD.ISBN = L.ISBN;


--Requête 16 – Afficher les livres qui ont été vendus au moins une fois.
SELECT Titre, ISBN
FROM Livre
WHERE ISBN IN (
    SELECT ISBN
    FROM Composé_De
);


--Requête 17 – Afficher les clients qui n'ont jamais effectué d'emprunt.
SELECT Num_Client, Nom_Client, Prenom_Client
FROM Client
WHERE Num_Client NOT IN (
    SELECT Num_Client
    FROM Emprunt
);


--Requête 18 – Afficher les livres qui ont été empruntés au moins une fois.
SELECT L.Titre, L.ISBN
FROM Livre L
WHERE EXISTS (
    SELECT *
    FROM Exemplaire EX
    INNER JOIN Emprunt E
    ON EX.Code_Barre_Interne = E.Code_Barre_Interne
    WHERE EX.ISBN = L.ISBN
);


--Requête 19 – Afficher les éditeurs qui ne possèdent aucun livre dans la librairie.
SELECT E.Id_Editeur, E.Nom_Editeur
FROM Editeur E
WHERE NOT EXISTS (
    SELECT *
    FROM Livre L
    WHERE L.Id_Editeur = E.Id_Editeur
);


--Requête 20 – Afficher les livres dont le prix est supérieur au prix d'au moins un livre de genre Thriller.
SELECT Titre, Prix_Vente
FROM Livre
WHERE Prix_Vente > ANY (
    SELECT Prix_Vente
    FROM Livre
    WHERE Genre_Littéraire = 'Thriller'
);


--Requête 21 – Afficher les livres dont le prix est supérieur à celui de tous les livres de genre Essai.
SELECT Titre, Prix_Vente
FROM Livre
WHERE Prix_Vente > ALL (
    SELECT Prix_Vente
    FROM Livre
    WHERE Genre_Littéraire = 'Essai'
);
