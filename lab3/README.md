# Lab 3

## Introduction
Ce lab aura pour objectif de tester l'isolation de state terraform et voir quelques concept plus avancé du langage HCL (boucle, condition, etc)

## Configurer le backend sur s3
 * Par rapport au lab1 & lab2, il faut ce coup-ci ajouter un lock sur dynamob db
 * Lancer un terraform init pour initialiser le backend
 * Ouvrir 2 terminaux et lancer un terraform apply dans un interval court
	=> si le lock est bien en place, sur le second run, une alerte de state locké doit survenir

## Terraform workspace
 * Créer un workspace dev
 * Créer le fichier main.tf et créer une instance
 * S'assurer que l'apply fonctionne correctement
 * Consulter le bucket s3 et comprendre sa structure
 * Consulter la dynamodb pour observer le lock
 * Créer un workspace prd
 * Lancer à nouveau un apply, que constatez-vous ?
 * Consulter la dynamodb pour observer le lock
 * Modifier l'instance pour avoir une t3.nano en dev et une t3.micro en prod
 * Modifier l'instance pour ajouter un tag Name qui sera de la forme ddupin-<env>
 * Modifier le tag pour utiliser la variable env
 * Valoriser la variable env en fonction du nom du workspace et déployer l'infra
 * Sauvegarder le state du workspace de dev et prod dans dev.tfstate et prd.tfstate
 * Se positionner sur le workspace default
 * Supprimer les workspace dev et prd  en mode force

## Terraform multi backend 
 * Compléter le fichier backends/dev.tf pour pointer sur s3
 * Compléter le fichier backends/prd.tf pour pointer sur s3
 * Lancer un terraform init en spécifiant le fichier backend de dev
 * Restaurer le state de dev
 * Compléter le fichier variables/dev.tfvars (valoriser la variable env)
 * Lancer un terraform apply en spécifiant le fichier variables/dev.tfvars
 * Normalement aucune différence ne sera apportée à l'infrastructure
 * Lancer un terraform init en spécifiant le fichier backend de prd
 * Restaurer le state de prd 
 * Compléter le fichier variables/prd.tfvars (valoriser la variable env)
 * Lancer un terraform apply en spécifiant le fichier variables/prd.tfvars
 * Normalement aucune différence ne sera apportée à l'infrastructure


## Terraform destroy
 * Lancer un terraform destroy sur chacun des environnements (dev & prd)
