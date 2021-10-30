# Configure the Cloudflare provider.
# You may optionally use version directive to prevent breaking changes occurring unannounced.
terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

# provider "cloudflare" { 
#   email      = "rodney-ellis@hotmail.com"
#   api_token    = "9xEPJc3n5rWYZt2ipd9FjJmqZolRx7nAPOAMT8U1"
#   account_id = "9bd87d8885fd18a6ce96e4104547bcfd"
# }

provider "cloudflare" { 
  email      = var.email
  api_token    = var.api_token
  account_id = var.account_id
}


# provider "cloudflare" {
# #  version    = "~> 2.0"
#   email      = "rodney-ellis@hotmail.com"
#   api_token    = "9xEPJc3n5rWYZt2ipd9FjJmqZolRx7nAPOAMT8U1"
#   account_id = "9bd87d8885fd18a6ce96e4104547bcfd"
# }

# Create a records
resource "cloudflare_record" "Router" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "router"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "alertmanager" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "alertmanager"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "grafana" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "grafana"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "heimdall" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "heimdall"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "home" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "home"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "minio" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "minio"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "terraform" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "terraform"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "nginxmanager" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "nginxmanager"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "node-red" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "node-red"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "owncloud" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "owncloud"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "pihole" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "pihole"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "portainer" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "portainer"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "prometheus" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "prometheus"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "qbittorrent" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "qbittorrent"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "solar" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "solar"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "sonar" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "sonar"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "tautulli" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "tautulli"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "unifi" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "unifi"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "cadvisor" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "cadvisor"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "registry" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "registry"
  value   = "192.168.88.150"
  type    = "A"
}

resource "cloudflare_record" "smokeping" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  name    = "smokeping"
  value   = "192.168.88.150"
  type    = "A"
}

# resource "cloudflare_record" "vpn" {
#   zone_id = "70182c792b1a781051a72acfe20d5450"
#   name    = "vpn"
#   value   = "ellishome.co.za"
#   type    = "CNAME"
# }

resource "cloudflare_filter" "southafrica" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  description = "allow southafrica"
  expression = "ip.geoip.country ne \"ZA\""
}

resource "cloudflare_firewall_rule" "southafrica" {
  zone_id = "70182c792b1a781051a72acfe20d5450"
  description = "allow South Africa"
  filter_id = cloudflare_filter.southafrica.id
  action = "block"
}