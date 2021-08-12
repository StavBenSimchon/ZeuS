resource "helm_release" "gateway" {
  name  = "gateway"
  chart = "nginx-stable/nginx-ingress"

  # values = [
  #   "${file("values.yaml")}"
  # ]

  # set {
  #   name  = "cluster.enabled"
  #   value = "true"
  # }
}
