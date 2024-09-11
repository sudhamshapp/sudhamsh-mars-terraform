
resource "aws_instance" "thisistheinstance" {
    ami = var.thisisami
    instance_type = var.thisisinstancetype
  
}