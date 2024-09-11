resource "aws_db_instance" "default" {
  allocated_storage = var.storage_size
  db_name           = var.db_name
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  username          = "pgadmin"
  password          = random_password.dbpw.result
  # parameter_group_name = aws_db_parameter_group.postgrespg.name
  skip_final_snapshot = true

  tags = {
    environment        = var.environment
    dataclassification = var.dataclassification
    businessUnit       = var.businessUnit
  }
}

resource "random_password" "dbpw" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
