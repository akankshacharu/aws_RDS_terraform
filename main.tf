provider "aws"  {
  region = var.region
}

resource "aws_db_instance" "rds_instance" {
  count = var.instance_count

  identifier             = "${var.name}-${count.index}"
  engine                 = var.engine
  instance_class         = var.instance_type
  username               = var.username
  password               = var.password
  allocated_storage      = var.storage
  storage_type           = var.storage_type
  publicly_accessible    = var.publicly_accessible
  vpc_security_group_ids = var.security_groups
}

