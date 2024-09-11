resource "aws_instance" "thiscouldbeanything" {
    ami = var.amioftheinstance
    instance_type = var.instancetypefortheinstance
  
}