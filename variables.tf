variable "region" {
 description = "AWS region where RDS instance will be deployed"
}

variable "instance_count" {
  description = "Number of RDS instances to create"
  default     = 1
}

variable "name" {
  description = "Name for the RDS instance"
}

variable "engine" {
  description = "Database engine for the RDS instance"
}

variable "instance_type" {
  description = "Instance type for the RDS instance"
}

variable "username" {
  description = "Master username for the RDS instance"
}

variable "password" {
  description = "Master password for the RDS instance"
}

variable "storage" {
  description = "Allocated storage for the RDS instance (in GB)"
}

variable "storage_type" {
  description = "Storage type for the RDS instance"
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  default     = false
}

variable "security_groups" {
  description = "List of security group IDs to associate with the RDS instance"
  type        = list(string)
}

