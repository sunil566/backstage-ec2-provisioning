provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami           = "{{ values.amiId }}"
  instance_type = "{{ values.instanceType }}"

  tags = {
    Name = "{{ values.instanceName }}"
  }
}
