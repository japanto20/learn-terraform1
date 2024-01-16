env     = "dev"
ami     = "ami-06d4284fa7c9d6256"
sg_id   = ["sg-0e02eb30681e3cecb"]
zone_id = "Z07168053N2UH00BX82ND"

components = {
  frontend = {
    name          = "frontend"
    instance_type = "t3.micro"
  }
  mysql = {
    name          = "mysql"
    instance_type = "t3.micro"
  }
  backend = {
    name          = "backend"
    instance_type = "t3.micro"
  }
}