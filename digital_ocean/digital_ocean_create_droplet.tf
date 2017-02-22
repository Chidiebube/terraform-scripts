# Configure the DigitalOcean Provider
provider "digitalocean" {
    #token = "${var.do_token}"
    #token = "${var.digitalocean_token}"
}



# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "terraform" {
    image  = "ubuntu-14-04-x64"
    name   = "terrform-droplet"
    region = "fra1"
    size   = "1gb"
    #tags   = ["${digitalocean_tag.terraform.id}"]
}


/*# Create a new domain 
resource "digitalocean_domain" "default" {
    name = "amosbube.com"
    ip_address = "${digitalocean_droplet.terraform.ipv4_address}"
}


# Add a record to the domain
resource "digitalocean_record" "terraform" {
    domain = "${digitalocean_domain.default.name}"
    type = "CNAME"
    name = "terraformrecord" 
    value = "46.101.205.36"  #pointing to the ip of an existing droplet on Digital Ocean
}*/


