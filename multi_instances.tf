resource "aws_instance" "Sample_instance" {
  count         = 3
  ami           = "ami-922914f7"
  instance_type = "t2.micro"

  tags {
    Name = "Arvisat_project_${count.index}"
  }
}
