provider "aws"  {
  region = var.region
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


resource "aws_db_instance" "rds_instance" {
  count = var.instance_count

  identifier             = "${var.name}-${count.index}"
  engine                 = var.engine
  instance_class         = var.instance_type
  username               = var.username
  password               = random_password.password.result
  allocated_storage      = var.storage_size
  storage_type           = var.storage_type
  publicly_accessible    = var.publicly_accessible
  vpc_security_group_ids = var.security_groups
}

