terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "random_passwords_cloud_b2" {
  value = random_password.password
  sensitive = true
}
