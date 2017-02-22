# Create a new domain 
resource "digitalocean_domain" "default" {
    name = "coundigital.com"
    ip_address = "${digitalocean_droplet.terraform.ipv4_address}"
}


# Add a record to the domain
resource "digitalocean_record" "terraform5" {
    #domain = "skyrunmall.com"
    domain = "${digitalocean_domain.default.name}"
    type = "CNAME"
    name = "terraformrecord" 
    value = "skrunmall.com."  #pointing to the ip of an existing droplet on Digital Ocean
}