# Lab 4

## Introduction
Dans ce lab nous aborderons les boucles terraform

## Count
 * Modifier le fichier main.tf, et utiliser count pour simplifier la déclaration des 4 ressources random_pet.
 * Générer un output pour afficher l'id des 4 ressources
 * Supprimer la seconde entrée du state terraform

## For_each
 * Déclarer une variable map avec les données suivantes :
	myapp_1 :   "web-server-myapp-1"
	myapp_2 :   "web-server-myapp-2"
 * Ajouter un data pour l'ami amazon linux 2 (filtre de recherche sur name amzn2-*, owner = amazon, architecture = x86_x64)
 * Déployer des instances à l'aide du for_each et la variable créé précédemment
	=> Le tag Application devra porter le nom de l'application (myapp_x) et le tag Name devra porter le nom du serveur

## For
 * Générer un output de type list qui contient le nom des random_pet créé à l'aide de count en majuscule en ignorant le second élément
 * Générer un output de type map qui de la forme { name : <nom de l'instance>, private_ip : <ip privée de l'instance>,  ami : <ami qui a servir pour build l'instance>}

## Dynamic
 * Utiliser un bloc filter dynamique pour filtrer l'ami d'après les informations présentes dans la variable ami_filter
	data "aws_ami" "webserver" {
		dynamic "filter" {

		}
	}

## Destroy
 * Lancer un terraform destroy pour nettoyer les ressources
 * Pensez à conserver le code, il sera nécessaire pour le prochain lab
