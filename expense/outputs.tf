#if you want to use output directly
#output.instance_info == aws_instance.expense


output "instances_info" {
    value = aws_instance.expense
}