# sudhamsh-mars-terraform

terraform init
terraform validate
terraform fmt
terraform plan
terraform apply --auto-approve
terraform destroy --auto-approve
terraform show - helps retrirve the statefile
terraform apply -var-file=stage.tfvars
(terraform.tfstate)
how to run terraform in the ci/cd
Multi cloud - Hybrid cloud srchitecture of terraform
Multi region - in a specific cloud

I don't remember the syntax 100 percent, but I give a rough overview

variables - input(pass some info to the terraform, terraform apply does it for us behind the scenes) and output variables(terraform to print a particular value on the terminal)
terraform.tfvars
conditional expressions
modules in terraform
terraform state deep dive| remote backend with s3| statefile locking with ddb

terraform state file - record the information of the infrastructure that it has created
terraform proviosioners(file, remote-exec and local-exec)

terraform workspaces - instead of re-writing the terraform configuration for different environemts, will use one terraform configuration file across different environments using workspaces
helps create the statefile per environment(stage, dev, prod)
terraform workspace new stage
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev
terraform workspace show

mars@Sudhamshs-MacBook-Air Day-6 % terraform workspace show
dev
mars@Sudhamshs-MacBook-Air Day-6 % terraform workspace list
  default
* dev
  prod
  stage

mars@Sudhamshs-MacBook-Air Day-6 % terraform workspace select stage
Switched to workspace "stage".
mars@Sudhamshs-MacBook-Air Day-6 % terraform workspace list        
  default
  dev
  prod
* stage

mars@Sudhamshs-MacBook-Air Day-6 % terraform workspace show
stage

mars@Sudhamshs-MacBook-Air Day-6 % tree .
.
├── main.tf
├── modules
│   └── ec2-instance
│       ├── main.tf
│       ├── provider.tf
│       └── varaible.tf
├── terraform.tfstate.d
│   ├── dev
│   │   └── terraform.tfstate
│   ├── prod
│   └── stage
│       └── terraform.tfstate
└── terraform.tfvars

7 directories, 7 files

Hashicorp vault - popular choice for secret management and we can integrate the hashicorp vault with terraform, ci/cd, k8s
how to integrate terraform with hashicorp vault and retrieve the secrets from hashicorp vault

to retrieve the infrastructure we use data keyword and to proviosion use the resiurce keyword


terraform import - we're importing the existing configuration that is not created by terraform

terraform plan -generate-config-out=generated_resources.tf
terraform import aws_instance.thiscouldbeanything i-0ba34b373e28f9e9d

terraform drift - you can detect the drift in your organzation infrastructure change if someone makes manually, you can run it as cronjob for a specific interval
we can do it through terraform refresh as well - it updates the statefile if there is a modification done on the aws UI manually