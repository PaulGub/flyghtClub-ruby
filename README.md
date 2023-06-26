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

Le sujet était intéressant à traiter, offrant de nombreuses fonctionnalités différentes et captivantes à implémenter, notamment l'envoi de courriers électroniques, une tâche que l'on ne réalise pas souvent lors de projets.

En ce qui concerne Ruby on Rails, nous avons trouvé ce framework assez simple à utiliser. Il simplifie réellement le développement en offrant de nombreuses fonctionnalités préconçues. Néanmoins, la gestion de l'interaction avec l'utilisateur côté client, notamment avec Javascript, peut être assez complexe. Cependant, étant donné que Ruby on Rails est un framework côté serveur, un peu comme PHP, cela est plutôt normal.
