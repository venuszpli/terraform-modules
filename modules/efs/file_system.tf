resource "aws_efs_file_system" "file_system" {
  tags = {
    environment        = var.environment
    dataclassification = var.dataclassification
    businessUnit       = var.businessUnit
  }

  availability_zone_name = var.availability_zone_name
}
