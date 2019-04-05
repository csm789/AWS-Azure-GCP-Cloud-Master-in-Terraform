data "aws_availability_zone" "available" {}

resource "aws_instance" "main_az" {
  ami = "${lookup(var.ami_type,var.region)}"
  availability_zone = "${data.aws_availability_zone.available.name[0]}"
  security_group_id = "${var.AWS_SG_ohio_ALLINONE}"
  instance_type = "${lookup(var.instance_type,var.env)}"

  tags {
    Name = "aws_availability_zone"
  }
}
