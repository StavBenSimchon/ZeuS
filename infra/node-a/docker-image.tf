# resource "docker_image" "dev" {
#   name = "dev"
#   build {
#     path = "../../node-a"
#     tag  = ["${image}"]
#     # build_arg = {
#     #   foo : "zoo"
#     # }
#     # label = {
#     #   author : "zoo"
#     # }
#   }
# }
