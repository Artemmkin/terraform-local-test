variable "my_list" {
  default = ["hello", "world"]
}

variable "my_map" {
  default = {
    id      = "1"
    message = "hello world"
  }
}

## functions to test
output "my_list_test1" {
  value = "${length(var.my_list)}"
}

output "my_map_test1" {
  value = "${lookup(var.my_map, "id")}"
}

output "my_map_test2" {
  value = "${lookup(var.my_map, "message")}"
}

output "my_map_test3" {
  value = "${lookup(var.my_map, "author", "None")}"
}
