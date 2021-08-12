
resource "kubernetes_config_map" "minio_configmap" {
  metadata {
    name = "tcp-services"
  }
  data = {
    "9000": "default/storage-minio:9000"
  }
}

# resource "kubernetes_ingress" "ingress_service" {
#   metadata {
#     name = "main-ingress"
#     annotations = {
#       "kubernetes.io/ingress.class"                    = "brand_gw_ingress_service"
#       "nginx.ingress.kubernetes.io/ssl-redirect"       = "false"
#       "nginx.ingress.kubernetes.io/force-ssl-redirect" = "false"
#       "nginx.ingress.kubernetes.io/proxy-body-size"    = "200m"
#     }
#   }
#   spec {
#     rule {
#       host = "gwtp-${var.core_brand_domain}"
#       http {
#         path {
#           backend {
#             service_name = "main-${var.core_brand_name}-gateway-service"
#             service_port = 80
#           }

#           path = "/"
#         }
#       }
#     }


#     tls {
#       hosts = [
#         "tp-${var.core_brand_domain}",
#         "gwtp-${var.core_brand_domain}"
#       ]
#       secret_name = "brand-${var.core_brand_name}-tls"
#     }
#   }
# }