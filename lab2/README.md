# Lab 2

# Introduction

Dans ce lab, on va aller plus loin dans terraform avec l'utilisation du HCL pour déployer des ressources.

# Backend
Commencer par configurer le backend s3.

# Data
 * Modifier le fichier data.tf pour retrouver le vpc vpc-datalake-sbxdatammh (si possible en filtrant sur le tag Name)
    Doc : https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc
 * Faire un data sur les subnets du vpc
 * Rechercher l'AMI la plus récente d'Amazon Linux 2, filter sur le nom de l'ami amzn2-ami
 * S'assurer que terraform apply s'exécute correctement

     
# Resource
 * Quand le terraform apply sur les data est opérationnel:
	=> décommenter les lignes du fichier main.tf et le compléter
	=> il y a une subtilité pour adresser le subnet, car aws_subnets renvoie un tableau d'id de subnet (terraform console ou terraform state show peuvent aider)
 * Déployer l'infrastructure avec terraform apply
 * Modifier la variable server_name à l'aide d'une variable d'environnement
 * Modifier la variable server_name à l'aide d'un fichier tfvars
 * Modifier la variable server_name à l'aide d'option lors de l'appel à la commande terraform
 * Utiliser une fonction terraform pour mettre en majuscule le tag Name de l'instance
 * Configurer l'ouput server_private_ip pour afficher l'ip privée de l'instance
 * Créer un security group
 * Créer une règle de securité qui autorise tous les flux sortant et l'associer au security group
 * Créer une règle de flux entrant qui autorise le ssh et l'associer au security group
 * Enfin associer le security group à l'instance

# Destroy
 * Lancer la commande terraform destroy pour supprimer l'infrastructure
 * Vérifier le contenu du state (terraform state list)

