

variable "instance_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "deepakaws.online"
}

variable "zone_id" {
    default = "Z04665842HM6QAD0S0KW"
}