output "rds_instance_endpoint" {
  value = aws_db_instance.rds_instance[*].endpoint
}

output "generated_password" {
  value = random_password.db_password.result
  sensitive = true
}