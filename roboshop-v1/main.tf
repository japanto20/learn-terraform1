resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "frontend"
  }

}

resource "aws_route53_record" "frontend" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "frontend-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "catalogue"
  }

}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "catalogue-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "redis"
  }

}

resource "aws_route53_record" "redis" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "redis-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "mongodb"
  }

}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "mongodb-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "user" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "user"
  }

}

resource "aws_route53_record" "user" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "user-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "cart"
  }

}

resource "aws_route53_record" "cart" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "cart-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "mysql"
  }

}

resource "aws_route53_record" "mysql" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "mysql-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "shipping" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "shipping"
  }

}

resource "aws_route53_record" "shipping" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "shipping-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "rabbitmq"
  }

}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "rabbitmq-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "payment"
  }

}
resource "aws_route53_record" "payment" {
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "payment-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}