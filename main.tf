resource "aws_instance" "myec2" {
  ami                     = var.ami
  instance_type           = var.instance_type

  key_name = aws_key_pair.deployer.key_name
  
  tags = {
    Name = var.name
    owner = var.owner
    Env   = var.env
  }

}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.public_ca_key
}
