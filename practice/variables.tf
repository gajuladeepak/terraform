variable "ami_id {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami id of devops practice"
}

variable "instance_type" {
    default = "t3.micro"
}
variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssshhh"
}

variable "description" {
    default = "Allow port number 22 for SSH access"
}


variable "from_port"{
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol"{
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}



