/*# Create a new domain 
resource "digitalocean_domain" "default" {
    name = "amosbube.com"
    ip_address = "${digitalocean_droplet.terraform.ipv4_address}"
}*/


# Add a record to the domain
resource "digitalocean_record" "terraform5" {
    domain = "terraform.skyrunmall.com"
    #domain = "${digitalocean_domain.default.name}"
    type = "A"
    name = "terraformrecor" 
    value = "46.101.205.36"  #pointing to the ip of an existing droplet on Digital Ocean
}