module "thiscouldbeanyname" {
  source                     = "./modules/ec2-instances"
  amioftheinstance           = "ami-085f9c64a9b75eed5"
  instancetypefortheinstance = "t2.micro"
  regionoftheinstance        = "us-east-2"


}

# No need of writing the entire code when we use modules, just define the source and assign the appropriate values that are in the variables.tf
# call the modules that are desired and pass the values