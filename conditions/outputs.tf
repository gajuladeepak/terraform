output "public_ip" { #we can give any name after output 
    value  = aws_instance.terraform.public_ip #here public_ip is keyword
    sensitive = false
    description = "This is the public Ip of instance created"
}
