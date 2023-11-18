variable "user_id" {
}
variable "fingerprint" {
}
variable "private_key_path" {
}
variable "disable_auto_retries" {
  default = true
}
provider "oci" {
  version          = "=4.30.0"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_id
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
provider "oci" {
  version              = "=4.30.0"
  alias                = "home"
  region               = local.home_region
  tenancy_ocid         = var.tenancy_ocid
  user_ocid            = var.user_id
  fingerprint          = var.fingerprint
  private_key_path     = var.private_key_path
  disable_auto_retries = var.disable_auto_retries
}
