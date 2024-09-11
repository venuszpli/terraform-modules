variable "environment" {
  type     = string
  default  = ""
  nullable = false
  validation {
    condition     = contains(["Developmenet", "Staging", "Production"], var.environment)
    error_message = "Valid value: Developmenet | Staging | Production"
  }
}
variable "multi_az_enabled" {}
variable "dataclassification" {
  type     = string
  default  = ""
  nullable = false
  validation {
    condition     = contains(["Public", "Internal", "restricted", "HighlyRestricted"], var.dataclassification)
    error_message = "Valid value: Public | Internal | restricted | HighlyRestricted"
  }
}
variable "businessUnit" {
  type     = string
  default  = ""
  nullable = false
  validation {
    condition     = contains(["WPB", "MSS", "WS", "ET"], var.businessUnit)
    error_message = "Valid value: WPB | MSS | WS | ET"
  }
}
variable "az_selector" {
  type        = list(string)
  description = "AZ list for EFS"
  default     = []
  nullable    = false
}



variable "storage_size" {}
variable "db_name" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
