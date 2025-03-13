

resource "aws_route53_record" "expense" {
    count = length(var.instance_names)    
    zone_id = var.zone_id #for zone_id navigate to route53 and click on hosted zone and click on the domain link and click on the drop down of "Hosted Zone details" copy the zone id
    name    = "${var.instance_names[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.expense[count.index].private_ip]
    allow_overwrite = true
}