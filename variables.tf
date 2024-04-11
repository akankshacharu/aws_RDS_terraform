variable "region" {
  type = string
 description = "AWS region where RDS instance will be deploye"
}

variable "instance_count" {
  description = "Number of RDS instances to create"
  default     = 1
  type = number
}

variable "name" {
  type = string
  default = "rds"
  description = "Name for the RDS instance"
}

variable "engine" {
  type = string
  default = "mysql"
  description = "Database engine for the RDS instance"
}

variable "instance_type" {
  type = string
  default = "db.t3.micro"
  description = "Instance type for the RDS instance"
}

variable "username" {
  type = string
  default = "admin"
  description = "Master username for the RDS instance"
}

variable "password" {
  type = string
  default = "test@0007"
  description = "Master password for the RDS instance"
}

variable "storage_size" {
  type = number
  default = 5
  description = "Allocated storage for the RDS instance (in GB)"
}

variable "storage_type" {
  type = string
  default = "gp3"
  description = "Storage type for the RDS instance"
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  default     = True
  type = bool
}

variable "security_groups" {
  description = "List of security group IDs to associate with the RDS instance"
  type        = list(string)
  default = [ "value" ]
}

