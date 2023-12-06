variable "sample1" {
  default = "hello"
}

output "sample2" {
  value = var.sample1
}