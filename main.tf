module "efs" {
  source = "./modules/efs"

  environment            = var.environment
  dataclassification     = var.dataclassification
  businessUnit           = var.businessUnit
  availability_zone_name = var.multi_az_enabled || length(var.az_selector) > 1 ? null : var.az_selector[0]

}


module "rds" {
  source             = "./modules/rds"
  storage_size       = var.storage_size
  db_name            = "pg01"
  engine             = var.engine
  engine_version     = var.engine_version
  instance_class     = var.instance_class
  environment        = var.environment
  dataclassification = var.dataclassification
  businessUnit       = var.businessUnit
}


