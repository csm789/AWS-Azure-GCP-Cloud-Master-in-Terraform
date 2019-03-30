# Creating first instance - CODE
# Below is the code you can use to create ec2 instance shown in the first demo. Please note that you will be prompted to choose region.
# VERY IMPORTANT : Please choose us-east-2 as region. AMIid is specific to region and the one mentioned in demo is specific to us-east-2

resource "aws_instance" "Sample_instance" {
  ami           = "ami-922914f7"
  instance_type = "t2.micro"

  tags {
    Name = "demoinstance"
  }
}

/*

  These are the four ways to Password Credentials:
  1) Creating IAM user and password through provider.tf
  {
  Below is a sample provider.tf file
  NOTE : You need Provider.tf to replace access_key and secret_key with generated values

  provider "aws" {
    access_key = "AGHKJHLKJHLH23"
    secret_key = "DJLDDGGHH"
    region     = "us-east-2"
  }
  ==============================================================================
  2) Creating IAM user and password through Environment variables
FOLLOW THREE STEPS:
-> export AWS_ACCESS_KEY_ID="AGHKJHLKJHLH23"
-> export AWS_SECRET_ACCESS_KEY="AGHKJHLKJHLH23"
-> env | grep -i aws
-> terraform plan
-> terraform apply
  ==============================================================================
  3) Attach Admin roles to the user
  4) Storing it under ~/.aws/
================================================================================
*/
