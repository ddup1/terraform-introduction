# Introduction to terraform state

Le lab sert à présenter le concept de state de terraform. En effet terraform sauvegarde le déploiement d'infrastructure dans un fichier json qu'on appelle state terraform.
C'est grâce à celui-ci que terraform a une vision des éléments déployés et des éventuels dela de configuration à appliquer (création, modification, suppression).
On abordera également des notions de provider et commande de base terraform.


# Exercice
##  Init
 * Se positionner dans le dossier lab1 et lancer la commande terraform init
 * Analyser le retour de terraform (init backend, download plugins)
 * A l'aide de la commande 'ls -la' vérifier le contenu du dossier et les fichiers générés.
 * Regarder le contenu du fichier .terraform/terraform.tfstate

## Apply
 * Lancer un plan terraform vers le fichier lab1.plan
 * Appliquer le plan généré précédemment avec terraform
 * A l'aide de la commande ls, vérifier le contenu du dossier et les fichiers générés

## Backend
 * Consulter le contenu du fichier backend.tf
 * Consulter le contenu du fichier lab1.tfstate (commande cat ou via un éditeur de texte)
 * Lister le contenu du state
 * Afficher le détail de la resource random_pet lab1
 * Modifier le fichier backend.tf pour pointer sur s3
	Doc : https://developer.hashicorp.com/terraform/language/settings/backends/s3
 * Lancer à nouveau un terraform apply, que constatez vous ?
 * Lancer un terraform init, quel retour terraform renvoie ?
 * Migrer le state terraform vers s3, à l'aide du retour de terraform vu précédemment
 * Vérifier sur s3, la présence du state terraform
 * Lancer un terraform apply à nouveau, si le state a bien été migré alors il ne devrait plus y avoir d'avertissement

## Provider
 * Lancer la commande terraform providers pour afficher les providers configurés
 * Modifier le fichier backend et remplacer la version du provider random de ~>3.2.0 à ~>3.3.0
 * Lancer terraform apply à nouveau
 * Terraform a detecté un changement dans la version du provider
 * Mettre à jour le provider à l'aide de la commande terraform init pour pouvoir à nouveau lancer un terraform apply

## Console
 * Lancer la commande terraform console
 * Afficher l'id du random_pet lab1

## HCL
 * En se basant sur l'exemple de random_pet, ajouter une resource de type chaine aléatoire
 * Enfin modifier la taille de random_pet pour avoir une taille de 4

## Destroy
 * Détruire l'infrastructure générée
 * Afficher le contenu du state
