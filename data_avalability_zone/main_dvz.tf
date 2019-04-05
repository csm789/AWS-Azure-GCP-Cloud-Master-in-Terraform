data "aws_availability_zones" "available" {}

resource "aws_instance" "main_az" {
  ami = "${lookup(var.ami_type,var.region)}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  vpc_security_group_ids = ["${var.security_group_ids}"]
  instance_type = "${lookup(var.instance_type,var.env)}"

  tags {
    Name = "aws_availability_zone"
  }
}
