# ProjetDB_Huynh_Ribeiro

Prompt :

Tu travailles dans le domaine des livres. Ta librairie a comme activité de vendre/prêter des livres. C’est une librairie comme la Fnac, Librairie Galignani, Shakespear and Company. Inspire-toi des sites suivants: https://www.fnac.com/l726/Nouveautes-Livre#bl=MMli
https://www.shakespeareandcompany.com/
https://www.galignani.fr/
Ta librairie veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données. 
D’abord, établis les règles de gestions des données de ta librairie, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.


Réponse de l'IAG :

# Analyse des besoins – Librairie et espace de prêt de livres

## 1. Présentation générale de l'entreprise

La librairie étudiée est une enseigne culturelle qui propose à ses clients l'achat et le prêt de livres. Elle s'inspire du fonctionnement de grandes librairies telles que la Fnac, Shakespeare and Company et la Librairie Galignani.

Elle propose plusieurs catégories d'ouvrages : romans, bandes dessinées, mangas, essais, livres scolaires, livres d'art, littérature étrangère, etc.

Son activité repose sur plusieurs services :

- La vente de livres : les clients peuvent consulter le catalogue, rechercher des ouvrages, connaître leur prix et acheter les livres disponibles.
- Le prêt de livres : les clients peuvent emprunter certains ouvrages pour une durée déterminée, puis les rapporter.
- La gestion du catalogue : la librairie référence les livres, leurs auteurs, leurs éditeurs, leurs catégories et leurs caractéristiques.
- La gestion des stocks : la librairie suit les quantités disponibles à la vente et au prêt.
- La gestion des clients : elle conserve les coordonnées des clients et les informations nécessaires au suivi de leurs achats et emprunts.
- La gestion des commandes : elle suit les commandes passées auprès des fournisseurs et les commandes effectuées par les clients.
- La mise en avant des ouvrages : elle propose des nouveautés, des meilleures ventes, des coups de cœur et des sélections thématiques.

L'objectif est de recueillir les règles de fonctionnement de l'entreprise, puis de dresser un dictionnaire des données nécessaires à la gestion de son activité. Ces éléments seront transmis à l'étudiant chargé de la conception informatique.

## 2. Règles de gestion de l'entreprise

Les règles de gestion décrivent les habitudes, les contraintes et les procédures de la librairie. Elles sont formulées du point de vue du personnel et de la direction, sans faire référence à une future organisation informatique.

Les sites de référence permettent notamment de retenir une organisation par rayons, formats et catégories, ainsi que des sélections de nouveautés, de meilleures ventes et de coups de cœur.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://www.fnac.com\&sz=32)

fnac+1



### A. Gestion des livres et du catalogue

- La librairie propose des livres neufs et, éventuellement, des livres d'occasion.
- Chaque livre est caractérisé par un titre, un ISBN, une date de publication, une langue, un format et un prix de vente.
- Un livre peut être écrit par un ou plusieurs auteurs.
- Un auteur peut avoir écrit plusieurs livres.
- Chaque livre est publié par une maison d'édition. Un éditeur peut publier plusieurs livres.
- Chaque livre appartient à une ou plusieurs catégories (roman, policier, manga, bande dessinée, littérature, sciences, histoire, etc.).
- Un livre peut être disponible en plusieurs formats (poche, broché, relié, numérique, livre audio, etc.). Chaque format peut avoir un prix différent.
- La librairie peut proposer des livres en plusieurs langues.
- Chaque livre possède un résumé permettant aux clients de connaître son contenu.
- La librairie peut mettre en avant certains ouvrages comme nouveautés, meilleures ventes, coups de cœur ou sélections thématiques.
- Certains ouvrages peuvent être réservés à la consultation ou au prêt, tandis que d'autres sont uniquement destinés à la vente.

### B. Gestion des stocks

- La librairie possède un stock physique de livres.
- Plusieurs exemplaires d'un même livre peuvent être présents dans le stock.
- Chaque exemplaire physique est destiné soit à la vente, soit au prêt, selon son affectation.
- La quantité disponible à la vente doit être connue à tout moment.
- La quantité disponible au prêt doit également être connue.
- Un exemplaire emprunté n'est plus considéré comme disponible au prêt jusqu'à son retour.
- Un exemplaire vendu est retiré du stock disponible.
- Les livres endommagés ou perdus doivent être signalés afin de ne pas être considérés comme disponibles.
- Lorsque le stock d'un ouvrage devient insuffisant, la librairie peut passer une commande auprès d'un fournisseur.

### C. Gestion des clients

- Toute personne peut consulter le catalogue de la librairie.
- Pour effectuer un achat, le client doit fournir les informations nécessaires à la réalisation de la vente.
- Pour emprunter un livre, le client doit être inscrit auprès de la librairie.
- Chaque client inscrit possède une fiche contenant ses coordonnées : nom, prénom, adresse électronique, numéro de téléphone et adresse postale.
- Un client peut effectuer plusieurs achats au cours du temps.
- Un client peut également effectuer plusieurs emprunts, sous réserve de respecter les conditions de prêt.
- La librairie conserve l'historique des achats et des emprunts de ses clients.
- Les clients doivent rapporter les livres empruntés avant ou à la date limite de retour.
- En cas de retard, la librairie applique sa politique de gestion des retards (rappel, restriction temporaire du prêt ou pénalité éventuelle).
- Un client peut demander la réservation d'un ouvrage indisponible, sous réserve des conditions fixées par la librairie.

### D. Gestion des ventes et des commandes clients

- Un client peut acheter un ou plusieurs livres lors d'une même vente.
- Une vente est associée à une date et à un montant total.
- Chaque livre vendu possède un prix de vente au moment de la transaction.
- Le montant total d'une vente correspond à la somme des prix des articles, après prise en compte des éventuelles réductions.
- Plusieurs moyens de paiement peuvent être acceptés : carte bancaire, espèces, chèque ou autres moyens autorisés.
- Une vente peut faire l'objet d'une facture ou d'un ticket de caisse.
- Une commande client peut être passée lorsqu'un ouvrage n'est pas immédiatement disponible.
- Une commande peut contenir plusieurs livres.
- Le client doit être informé lorsque sa commande est disponible.

### E. Gestion des prêts

- Seuls les clients inscrits peuvent emprunter des livres.
- Chaque emprunt concerne un exemplaire physique précis.
- Un emprunt possède une date de début et une date limite de retour.
- Un même client peut emprunter plusieurs livres, dans la limite autorisée par la librairie.
- Un exemplaire ne peut pas être prêté à plusieurs clients simultanément.
- Lorsqu'un livre est rapporté, la date réelle de retour est enregistrée.
- À son retour, le livre est vérifié par le personnel avant d'être remis à disposition.
- Un livre peut être déclaré perdu ou détérioré pendant la période de prêt.
- La librairie peut autoriser le renouvellement d'un prêt, sous certaines conditions.

### F. Gestion des fournisseurs et des approvisionnements

- La librairie travaille avec plusieurs fournisseurs et distributeurs de livres.
- Chaque fournisseur possède des coordonnées permettant de le contacter.
- Un fournisseur peut proposer plusieurs ouvrages.
- La librairie peut commander plusieurs livres auprès d'un même fournisseur.
- Chaque commande fournisseur possède une date de commande et un état d'avancement.
- Une commande fournisseur peut être livrée en plusieurs fois.
- À la réception, le personnel vérifie les quantités et l'état des livres reçus.
- Les quantités réceptionnées viennent augmenter le stock de la librairie.

### G. Gestion commerciale et animation de la librairie

- La librairie peut organiser des événements : séances de dédicaces, rencontres avec des auteurs, conférences ou clubs de lecture.
- Chaque événement possède un nom, une description, une date, un horaire et un lieu.
- La librairie peut proposer des sélections de livres selon les saisons, les événements ou les centres d'intérêt des lecteurs.
- Les clients peuvent recevoir des informations sur les nouveautés et les événements, sous réserve de leur accord.
- La librairie peut appliquer des réductions commerciales sur certains ouvrages ou pendant certaines périodes.

## 3. Dictionnaire des données brutes

### 3.1. Objectif du dictionnaire

Le dictionnaire des données recense les informations élémentaires nécessaires au fonctionnement de la librairie.

Il permet de préciser :

- La signification : ce que représente concrètement chaque information dans l'activité de l'entreprise.
- Le type : la nature de l'information (texte, nombre, date, montant, etc.).
- La taille : le nombre maximal de caractères ou de chiffres envisagé pour enregistrer cette information.

Il s'agit volontairement d'un dictionnaire de données brutes : les informations sont présentées indépendamment de leur future organisation dans la base de données. Aucun choix n'est donc fait concernant les tables, les relations ou les clés.

### 3.2. Tableau du dictionnaire de données

Le dictionnaire comporte 32 données, réparties entre les livres, les clients, les ventes, les prêts, les stocks et les fournisseurs.

#### A. Informations relatives aux livres

| Signification de la donnée                | Type                 | Taille           |
| ----------------------------------------- | -------------------- | ---------------- |
| Titre du livre                            | Texte                | 150 caractères   |
| ISBN du livre                             | Texte alphanumérique | 13 caractères    |
| Résumé ou description du livre            | Texte long           | 2 000 caractères |
| Date de publication du livre              | Date                 | 10 caractères    |
| Langue dans laquelle le livre est écrit   | Texte                | 30 caractères    |
| Format du livre (poche, broché, relié...) | Texte                | 30 caractères    |
| Prix de vente du livre en euros           | Décimal              | 8 chiffres (6+2) |
| Nom de l'auteur                           | Texte                | 100 caractères   |
| Prénom de l'auteur                        | Texte                | 100 caractères   |
| Nom de la maison d'édition                | Texte                | 100 caractères   |
| Nom de la catégorie du livre              | Texte                | 60 caractères    |

#### B. Informations relatives aux clients

| Signification de la donnée                  | Type                 | Taille         |
| ------------------------------------------- | -------------------- | -------------- |
| Nom du client                               | Texte                | 100 caractères |
| Prénom du client                            | Texte                | 100 caractères |
| Adresse électronique du client              | Texte alphanumérique | 150 caractères |
| Numéro de téléphone du client               | Texte numérique      | 20 caractères  |
| Adresse postale du client                   | Texte                | 200 caractères |
| Date d'inscription du client à la librairie | Date                 | 10 caractères  |

#### C. Informations relatives aux ventes et aux commandes clients

| Signification de la donnée                   | Type           | Taille            |
| -------------------------------------------- | -------------- | ----------------- |
| Date à laquelle la vente est effectuée       | Date           | 10 caractères     |
| Quantité de livres achetés                   | Entier positif | 5 chiffres        |
| Prix unitaire appliqué au moment de la vente | Décimal        | 8 chiffres (6+2)  |
| Montant total de la vente                    | Décimal        | 10 chiffres (8+2) |
| Moyen de paiement utilisé                    | Texte          | 30 caractères     |
| État d'avancement de la commande client      | Texte          | 30 caractères     |

#### D. Informations relatives aux prêts

| Signification de la donnée                              | Type  | Taille        |
| ------------------------------------------------------- | ----- | ------------- |
| Date à laquelle le livre est emprunté                   | Date  | 10 caractères |
| Date limite à laquelle le livre doit être rapporté      | Date  | 10 caractères |
| Date à laquelle le livre est effectivement rendu        | Date  | 10 caractères |
| État du livre au retour (bon état, détérioré, perdu...) | Texte | 30 caractères |

#### E. Informations relatives aux stocks et aux fournisseurs

| Signification de la donnée                                         | Type                 | Taille         |
| ------------------------------------------------------------------ | -------------------- | -------------- |
| Quantité totale d'exemplaires d'un livre possédés par la librairie | Entier positif       | 6 chiffres     |
| Quantité d'exemplaires actuellement disponibles                    | Entier positif       | 6 chiffres     |
| Nom du fournisseur de livres                                       | Texte                | 100 caractères |
| Adresse électronique du fournisseur                                | Texte alphanumérique | 150 caractères |
| Date de réception d'une commande fournisseur                       | Date                 | 10 caractères  |

### 3.3. Précisions et conventions

Quelques précisions sont nécessaires pour éviter toute ambiguïté lors de l'exploitation du dictionnaire :

- Les tailles indiquées sont des tailles maximales envisagées. Elles pourront être adaptées lors de la conception technique.
- Les dates sont enregistrées au format `JJ/MM/AAAA` (10 caractères).
- Les prix et montants sont exprimés en euros et comportent deux chiffres après la virgule.
- Le numéro ISBN est considéré comme une donnée textuelle et non comme un nombre, car il sert à identifier un ouvrage et peut être présenté avec des séparateurs.
- Le numéro de téléphone est également considéré comme du texte afin de conserver les éventuels indicatifs internationaux et les zéros initiaux.
- Les dates de retour effectif peuvent rester non renseignées tant que le livre n'a pas été rendu.
- Les quantités de livres ne peuvent pas être négatives.
- Les règles relatives au nombre maximal d'emprunts, à la durée des prêts et aux éventuelles pénalités devront être précisées par la direction de la librairie.

### 3.4. Synthèse

Le dictionnaire contient 32 données élémentaires permettant de couvrir les principales activités de l'entreprise :

| Domaine                     | Nombre de données |
| --------------------------- | ----------------- |
| Livres et catalogue         | 11                |
| Clients                     | 6                 |
| Ventes et commandes clients | 6                 |
| Prêts                       | 4                 |
| Stocks et fournisseurs      | 5                 |
| Total                       | 32                |

Conclusion : Les règles de gestion et le dictionnaire des données constituent le point de départ de l'analyse MERISE. Ils donnent à l'étudiant les informations nécessaires pour poursuivre le travail : identification des dépendances entre les données, réalisation du modèle conceptuel des données (MCD), puis passage aux étapes suivantes de conception de la base de données.

Remarque : les règles de gestion proposées décrivent une librairie fictive inspirée des enseignes citées. Elles constituent une base de travail à faire valider par le responsable de l'entreprise avant la conception définitive.

