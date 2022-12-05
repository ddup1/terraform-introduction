output "server_name" {
  value = var.server_name
}

output "url" {
  value = "https://${var.server_name}"
}

output "random_name" {
  value = random_pet.lab1.id
}
