module "thiscouldbeanyname" {
  source                     = "./modules/ec2-instances"
  amioftheinstance           = "ami-085f9c64a9b75eed5"
  instancetypefortheinstance = "t2.micro"
  regionoftheinstance        = "us-east-2"


}