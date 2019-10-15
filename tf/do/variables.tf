variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}
variable "uname" {}

variable "node_size" {
  default = "s-1vcpu-2gb"
}

variable "node_count" {
  default = 2
}

variable "region" {
  default = "fra1"
}

variable "image" {
  default = "ubuntu-18-04-x64"
}
