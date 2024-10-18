#variable "AWS_ACCESS_KEY_ID" {}
#variable "AWS_SECRET_ACCESS_KEY" {}
variable "ami" {
    default = "ami-0277155c3f0ab2930"
}
variable "region" {
  default = "us-east-1"
}
variable "name" {
  default = "Demo"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "env" {
  default = "Production"
}
variable "owner" {
  default = "Ben Miles"
}
variable "public_ca_key" {
}
variable "private_key" {
}
variable "public_signed_key" {
}