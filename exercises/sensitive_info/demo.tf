locals {
  db_password = {
    admin = "my-passcode"
  }
}

output "db_passcode" {
    value = local.db_password
    sensitive = true
}