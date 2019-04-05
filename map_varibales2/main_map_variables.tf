resource "aws_instance" "instance_map_variable" {
  ami = "${lookup(var.ami_type,var.priya)}"
instance_type = "${lookup(var.instance_type,var.env)}"
tags{
name = "Arvisat_DevOps_Project"
}
}
