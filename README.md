# README

Ci-dessous vous trouverez des informations utiles à la bonne utilisation de notre projet.


### Version ruby

ruby '2.5.1'


### Dépendances du système

Le Gem Faker a été ajouté au Gemfile.
De fait, quelques manoeuvres devront être réalisées.


### Installation

Entrez les commandes suivantes dans votre Terminal.

* **Etape 1 :** Installations des gem
```
Bundle install
```

* **Etape 2 :** Itialisation des bases de données
```
Rails db:migrate
```

* **Etape 3 :** Ouvrir le fichier 'development.sqlite3' dans votre outil de visualisation de BDD

Nous on utilise 'DB Browser for SQLite'

* **Etape 4 :** Alimentation des bases de données
```
Rails db:seed 
```
Actualiser pour voir apparaitre les données.
