
resource "aws_instance" "terraform" {
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = "t3.micro"
  vpc_security_group_ids  =  [aws_security_group.allow_ssh_terraform.id]
  tags = {
    Name = "terraform"
  }
}


resource "aws_security_group" "allow_ssh_terraform" {
    name        = "dynamic_demoo"
    description = "Allow port number 21 for SSH access"

   egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
    #terraform will give us variable with block name
   dynamic "ingress" {
        for_each  = var.ingress_rules
        content {
          from_port        = ingress.value["from_port"]
          to_port          = ingress.value["to_port"]
          protocol         = ingress.value["protocol"]
          cidr_blocks      = ingress.value.cidr_blocks  #both the forms are correct we can use any one
        }
  }

  tags = {
    Name = "allow_sshhh"
  }
}