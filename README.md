# Flyght Club

## Instructions pour exécuter le projet

Installer les dépendances :
```bash
bundle install
```
Migrer la base de donnée SQLite dans sa dernière version :
```bash
./bin/rails db:migrate
```
Injecter des vols dans la base de donnée
```bash
./bin/rails db:seed
```
Lancer l'application (important pour lancer le build Tailwind) :
```bash
./bin/dev
```

## Retour d’expérience sur le projet

Le sujet était cool a traité, avec pas mal de fonctionnalités différentes et 
intérésantes à implémenter notament l'envoie de mail qu'on ne fait pas souvent lors des projets.

En ce qui concerne Ruby on Rails, on a trouvé le framework assez simple à utiliser.
Le framework simplifie vraiment le développement avec pas mal de fonction "pré-faite".
Néanmoins la gestion de l'interaction avec l'utilisateur côté client, avec Javascript notamment est assez compliqué. 
Mais Ruby on Rails étant un framework server-side un peu comme PHP c'est plutôt normal.

