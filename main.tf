provider "null" {}

variable "car" {
  type = "list"

  default = [
    "opel",
    "citroen",
    "skoda",
    "VW",
    "toyota",
  ]
}

resource "null_resource" "brands" {
  count = "${length(var.car)}"

  provisioner "local-exec" {
    command = "echo car brand - ${var.car[count.index]}"
  }
}
