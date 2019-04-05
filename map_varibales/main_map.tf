resource "aws_instance" "main-project" {
ami = "${lookup(var.bastion_amis,var.sathya)}"
instance_type="${lookup(var.instance_type,var.env)}"
tags {
name = "Arvisat-DevOPs_project"
}
}
