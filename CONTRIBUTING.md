# Contribuer au projet

Ce document présente les règles à respecter pour contribuer au projet.

## 1. Convention de nommage des branches

Chaque modification doit être faite dans une branche dédiée.

Le nom de la branche doit être clair et commencer par un préfixe indiquant le type de modification.

Exemples de préfixes :

* `feat/` : ajout d’une nouvelle fonctionnalité ;
* `fix/` : correction d’un bug ;
* `docs/` : modification de la documentation ;
* `test/` : ajout ou modification de tests ;
* `chore/` : modification technique ou de configuration.

Exemples de noms de branches :

```bash
feat/ajout-route-ready
fix/connexion-postgresql
docs/mise-a-jour-readme
```

## 2. Pas de push direct sur main

Il est interdit de pousser directement du code sur la branche `main`.

Toutes les modifications doivent être faites dans une branche dédiée, puis proposées avec une Pull Request.

Exemple :

```bash
git checkout -b feat/ajout-route-ready
git add .
git commit -m "Ajout de la route ready"
git push origin feat/ajout-route-ready
```

## 3. Règle pour les Pull Requests

Une Pull Request doit être créée pour proposer une modification sur la branche `main`.

Avant d’être mergée, une Pull Request doit avoir au moins une approbation.

Cette règle permet de vérifier le code avant son intégration dans la branche principale et d’éviter les erreurs.

## 4. Bonnes pratiques

Avant de créer une Pull Request, il est conseillé de vérifier que le projet fonctionne correctement.

Il faut aussi utiliser des messages de commit clairs.

Exemple :

```bash
git commit -m "Correction de la connexion à PostgreSQL"
```

Les messages trop vagues comme `test`, `modif` ou `correction` sont à éviter.
