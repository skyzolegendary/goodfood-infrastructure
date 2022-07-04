module "goodfood" {
  source                        = "../cloud/modules/goodfood"
  ssh_key                       = var.ssh_key
  machine                       = var.machine
  zone                          = var.zone
  region                        = var.region
  project                       = var.project
  cidr_block                    = var.cidr_block
}
