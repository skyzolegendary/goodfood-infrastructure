variable "ssh_key" {
  default= "deploy"
}

variable "machine" {
  default= "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "zone" {
  default= "europe-west9-a"
}
variable "region" {
  default= "europe-west9"
}

variable "project" {
  default= "composed-yen-355215"
}

variable "cidr_block" {
  default = "172.16.0.0/24"
}