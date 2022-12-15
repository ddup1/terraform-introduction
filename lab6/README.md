# Lab 6

## Introduction
Ce lab a pour objectif de présenter l'utilisation de module terraform

## Création du module
 * Dans le sous dossier module compléter le fichier main.tf, variables.tf et outputs.tf pour :
   * déclarer 3 variables :
    * une pour préciser l'instance type (si non précisé alors l'instance type par défaut sera t3.nano)
    * une pour le nom de l'instance
    * une avec l'ami id à utiliser
   * déclarer une ressource aws_instance
    * le nom est obligatoire est alimenter le tag Name
    * si la variable ami_id est renseigné alors on l'utilise sinon on prend par défaut l'ami de data.tf du module
    * l'instance type sera t3.micro par défaut
   * déclarer les outputs suivantes :
    * l'instance id
    * l'adresse ip privée
 * Bonus : installer l'outil terraform-docs puis générer un fichier README.md à l'aide de terraform-docs

## Utilisation du module
 * Dans le dossier racine du lab6
    * Faire appel au module créé ci-dessus pour déployer une instance
    * En output générer un output basé sur les outputs du module

 * Bonus, utiliser un count pour déployer 2 instances du module et mettre à jour les outputs

## Destroy
 * Lancer un terraform destroy
