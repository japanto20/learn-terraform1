variable "instances" {
  default = {
    frontend = {}
    cart = {}
    catalogue = {}
    user = {}
    shipping = {}
    payment = {}
    mysql = {}
    mongodb = {}
    rabbitmq = {}
    redis = {}
  }
}

resource "aws_instance" "instance" {
  for_each = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = each.key
  }

}

resource "aws_route53_record" "record" {
  for_each = var.instances
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "${each.key}-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}