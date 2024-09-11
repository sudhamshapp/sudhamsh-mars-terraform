resource "aws_instance" "aws-compute" {
  ami           = var.ami-id
  instance_type = var.instance-type
}