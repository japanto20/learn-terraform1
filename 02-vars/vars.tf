variable "sample1" {
  default = "hello"
}

output "sample2" {
  value = var.sample1
}


variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruits_first_fruit" {
  value = var.fruits[0]
}

variable "fruits_with_quantity" {
  default = {
    apple  = 100
    banana = 200
    orange = 50
  }
}


output "fruits_apple_quantity" {
  value = var.fruits_with_quantity["apple"]
}

output "fruits_apple_quantity_with_name" {
  value = "Fruit Apple is having only ${var.fruits_with_quantity["apple"]} quantity"
}

variable "test2" {}
output "test3" {
  value = var.test2
}

variable "env" {}
output "env" {
  value = var.env
}
