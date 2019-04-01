resource "aws_instance" "unique_name" {
  ami           = "${var.amitype}"
  instance_type = "t2.micro"

  tags {
    Name = "interactive_variables"
  }
}
