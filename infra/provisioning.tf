module "gateway" {
  source = "./gateway"
  a      = var.a
}
# module "node-a" {
#   source = "./node-a"
# }
module "minio" {
  source = "./minio"
}
