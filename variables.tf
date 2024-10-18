#variable "AWS_ACCESS_KEY_ID" {}
#variable "AWS_SECRET_ACCESS_KEY" {}
variable "ami" {
    default = "ami-00546963c463248a7"
}
variable "region" {
  default = "us-east-1"
}
variable "name" {
  default = "demo-ssh-test"
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
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJjXJ3gEcvg5zNqD9DwgnWUkfTWLV24d40PIR2CffCyw"
}
variable "private_key" {
}
variable "public_signed_key" {
}