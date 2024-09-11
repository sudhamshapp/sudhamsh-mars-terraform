variable "thisisami" {
  description = "thisisami"
  # default = "ami-085f9c64a9b75eed5"
  type = string

}

variable "thisisinstancetype" {
  description = "thisisinstancetype"
  # default = "t2.micro"
  type = string

}

variable "thisisregion" {
  # default = "us-east-2"
  type = string

}
module "thiscouldbeanything" {
  source             = "./modules/ec2-instance"
  thisisami          = var.thisisami
  thisisinstancetype = var.thisisinstancetype
  thisisregion       = var.thisisregion
}