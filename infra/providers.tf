terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "1.3.2"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    docker = {
      source = "kreuzwerker/docker"
      # version = "2.13.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
# provider "kubernetes" {
#   host = "https://${module.kubernetes.host}"

#   client_certificate     = base64decode("${module.kubernetes.client_certificate}")
#   client_key             = base64decode("${module.kubernetes.client_key}")
#   cluster_ca_certificate = base64decode("${module.kubernetes.cluster_ca_certificate}")
# }

# provider "helm" {
#   kubernetes {
#     host = "https://${module.kubernetes.host}"

#     client_certificate     = base64decode("${module.kubernetes.client_certificate}")
#     client_key             = base64decode("${module.kubernetes.client_key}")
#     cluster_ca_certificate = base64decode("${module.kubernetes.cluster_ca_certificate}")
#   }
# }
