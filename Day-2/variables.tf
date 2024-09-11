variable "ami-id" {
  description = "this is amazon machine image"
  type        = string
  default     = "ami-085f9c64a9b75eed5"
}
variable "instance-type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}
variable "region-resided" {
  description = "region located"
  type        = string
  default     = "us-east-2"

}