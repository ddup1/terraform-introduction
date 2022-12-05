variable "server_name" {
  description = "Define the name of the server to be deployed"
  type        = string
  default     = "web-server"
  nullable    = false
  sensitive   = false
  validation {
    condition     = substr(var.server_name, 0, 4) == "web-"
    error_message = "Server name must start by web-"
  }
}
