# Lab 5

## Introduction
Ce lab va permettre de tester la mise en place du couplage fort. Accèder au state d'une autre stack déployée

## Remote state
 * Redéployer un lab4 avec state sur s3
 * Compléter le fichier data.tf pour ajouter une datasource de type remote state pointant sur le state du lab4
 * Lancer un terraform apply
 * A l'aide de terraform console, vérifier le contenu de la datasource
 * Créer une nouvelle output avec le contenu de l'output du state du lab4

## Destroy
 * Lancer un destroy des ressources du lab5 et lab4
