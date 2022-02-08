provider "aws" {
  region = "eu-west-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Owner = "richard.russell"
    Name = "TFCB-Webinar"
  }
}

output "vpcid" {
  value = aws_vpc.main.id
}
