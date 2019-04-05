resource "aws_instance" "list_variable" {
ami = "${lookup(var.ami_type,var.region)}"
vpc_security_groups_ids = "${var.AWS_SG_ohio_ALLINONE}"
instance_type = "${lookup(var.instance_type,var.env)}"

tags {
Name = "demo_listvariables"
}
}
