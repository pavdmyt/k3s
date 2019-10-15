resource "digitalocean_droplet" "node" {
  count              = "${var.node_count}"
  name               = "k3s-dev-de-test-${count.index + 1}"
  size               = "${var.node_size}"
  region             = "${var.region}"
  image              = "${var.image}"
  private_networking = true

  ssh_keys = [
    "${var.ssh_fingerprint}",
  ]

  connection {
    user        = "root"
    type        = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout     = "2m"
  }
}
