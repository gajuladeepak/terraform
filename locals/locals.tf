locals {
    domain_name = "deepakaws.online"
    zone_id = "Z04665842HM6QAD0S0KW"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"

    #count.index will not work in locals
}