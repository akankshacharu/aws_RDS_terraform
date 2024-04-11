variable "region" {
 type = string
 default = "us-east-1"
 description = "AWS region where RDS instance will be deployed"
}

variable "instance_count" {
  description = "Number of RDS instances to create"
  default     = 1
}

variable "name" {
 type = string
 default = "RDS-for-testing"
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

#variable "password" {
#  description = "Master password for the RDS instance" }


variable "storage" {
 type = number
 default = "10"
 description = "Allocated storage for the RDS instance (in GB)"
}

variable "storage_type" {
  type = string
  default = "gp2"
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

