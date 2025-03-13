data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["973714476881"]  #owner account id 

  #with only above two lines I will get all the recent AMI's from joindevops

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]  #AMI name

  }

  #with the starting two lines and with above block I will get all the recent AMI's from joindevops with name RHEL-9-DevOps-Practice

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}#to get the owner id click on RHEL-9_DevOps-Practice AMI ID link("ami-09c83fb71547c4f") copy owner account ID