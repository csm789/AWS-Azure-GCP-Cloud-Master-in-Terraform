# Main

resource "aws_instance" "Sample_instance" {
  ami           = "ami-922914f7"
  instance_type = "t2.micro"

  tags {
    Name = "demoinstance"
  }
}
