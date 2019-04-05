resource "aws_instance" "env_project" {
  ami = "${var.ami_type}"
instance_type = "${lookup(var.instance_type,var.env)}"
tags{
name = "Arvisat_DevOps_Project"
}
}
