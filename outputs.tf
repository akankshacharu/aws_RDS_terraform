output "rds_instance_endpoint" {
  value = aws_db_instance.rds_instance[*].endpoint
}

output "rds_password" {
  value       = random_password.password.result
  description = "The generated random password"
}