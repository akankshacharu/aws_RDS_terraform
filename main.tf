provider "aws"  {
  region = var.region
}

resource "random_password" "db_password" {
  length           = 12
  special          = true
  override_special = "_%"
}


resource "aws_db_instance" "rds_instance" {
  count = var.instance_count

  identifier             = "${var.name}-${count.index}"
  engine                 = var.engine
  instance_class         = var.instance_type
  username               = var.username
  password               = random_password.db_password.result
  allocated_storage      = var.storage
  storage_type           = var.storage_type
  publicly_accessible    = var.publicly_accessible
  vpc_security_group_ids = var.security_groups
}
 