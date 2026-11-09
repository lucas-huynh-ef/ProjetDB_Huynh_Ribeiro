Bonjour ! Bienvenue dans notre librairie. C'est un vrai soulagement de pouvoir compter sur toi pour la création de notre nouveau système d'information. Nous sommes une librairie indépendante, un peu hybride : notre activité principale est la vente de livres, mais nous avons aussi un espace dédié au prêt, un peu comme une bibliothèque privée pour nos clients les plus fidèles.

Comme convenu, j'ai recensé nos besoins en me basant sur notre fonctionnement quotidien en boutique. Je te transmets cela avec mes mots, en espérant que ce soit assez clair pour que tu puisses ensuite modéliser tout ça avec ta méthode MERISE.

Voici d'abord nos règles de gestion, suivies du dictionnaire recensant les données brutes que nous manipulons.

### Règles de gestion des données de la librairie

* **Concernant les livres :**
* Chaque livre est identifié de manière unique par son numéro ISBN.
* Pour un livre, nous avons besoin de connaître son titre, sa date de publication, sa langue principale et un court résumé.
* Un livre a un prix de vente défini. S'il est disponible pour l'espace bibliothèque, il possède également un tarif d'emprunt (qui peut être gratuit).
* Nous devons gérer deux stocks distincts : la quantité de livres disponibles à la vente en magasin, et la quantité d'exemplaires dédiés au prêt.
* Chaque livre est classé dans un et un seul genre littéraire principal (ex: Science-Fiction, Histoire, Jeunesse) pour faciliter le rangement.


* **Concernant les auteurs et éditeurs :**
* Un livre peut être écrit par un ou plusieurs auteurs.
* Pour chaque auteur, nous gardons son nom, son prénom et une petite biographie pour nos fiches "coup de cœur".
* Un livre est publié par un seul éditeur.
* Nous conservons le nom de l'éditeur ainsi que l'adresse email de notre contact chez eux pour les réassorts.


* **Concernant les clients :**
* Lorsqu'un client s'inscrit chez nous (pour acheter ou emprunter), nous lui attribuons un numéro de client unique.
* Nous renseignons son nom, son prénom, son email, son numéro de téléphone et son adresse postale.
* Pour avoir le droit d'emprunter des livres, le client doit souscrire à un abonnement. Nous devons donc mémoriser la date de début et la date de fin de cet abonnement.


* **Concernant les ventes :**
* Lors d'un passage en caisse, un ticket de vente est généré avec un numéro unique.
* Ce ticket enregistre la date de la transaction, le montant total payé par le client.
* Nous devons savoir quels livres ont été achetés sur ce ticket, et en quelle quantité.


* **Concernant les emprunts (prêts) :**
* Chaque emprunt fait l'objet d'une fiche avec un numéro de référence unique.
* Lorsqu'un client emprunte un livre, nous notons la date de début de l'emprunt et la date à laquelle il est censé nous le ramener (date de retour prévue).
* Quand le livre revient en boutique, nous enregistrons la date de retour effective.
* Nous notons également l'état physique du livre au moment du prêt (ex: Neuf, Bon, Usé) pour éviter les litiges au retour.



---

### Dictionnaire de données brutes

Voici le tableau récapitulant les 32 données issues de notre fonctionnement quotidien. J'ai estimé les tailles maximales pour que tu aies une idée de la place que cela prendra.

| Signification de la donnée | Type | Taille en nombre de caractères ou chiffres |
| --- | --- | --- |
| Numéro ISBN du livre | Alphanumérique | 13 |
| Titre du livre | Alphanumérique | 150 |
| Date de publication du livre | Date | 10 |
| Langue du livre | Alphabétique | 30 |
| Résumé de l'intrigue du livre | Alphanumérique | 1500 |
| Prix de vente du livre | Numérique (décimal) | 5 |
| Tarif d'emprunt du livre | Numérique (décimal) | 5 |
| Quantité en stock pour la vente | Numérique (entier) | 4 |
| Quantité en stock pour le prêt | Numérique (entier) | 4 |
| Nom du genre littéraire | Alphabétique | 50 |
| Nom de l'auteur | Alphabétique | 50 |
| Prénom de l'auteur | Alphabétique | 50 |
| Biographie de l'auteur | Alphanumérique | 1000 |
| Nom de l'éditeur | Alphanumérique | 100 |
| Email de contact de l'éditeur | Alphanumérique | 100 |
| Numéro de client | Alphanumérique | 10 |
| Nom du client | Alphabétique | 50 |
| Prénom du client | Alphabétique | 50 |
| Adresse email du client | Alphanumérique | 100 |
| Numéro de téléphone du client | Alphanumérique | 15 |
| Adresse postale du client | Alphanumérique | 200 |
| Date de début d'abonnement au prêt | Date | 10 |
| Date de fin d'abonnement au prêt | Date | 10 |
| Numéro du ticket de vente | Alphanumérique | 15 |
| Date de la transaction de vente | Date | 10 |
| Montant total de la vente | Numérique (décimal) | 7 |
| Quantité vendue pour un livre précis | Numérique (entier) | 3 |
| Numéro de référence de l'emprunt | Alphanumérique | 12 |
| Date de début de l'emprunt | Date | 10 |
| Date de retour prévue de l'emprunt | Date | 10 |
| Date de retour effective de l'emprunt | Date | 10 |
| État physique du livre lors du prêt | Alphabétique | 20 |

J'espère que ces éléments te donnent une base solide pour commencer l'élaboration du Modèle Conceptuel de Données (MCD). N'hésite pas si tu as besoin de précisions sur notre façon de travailler !
