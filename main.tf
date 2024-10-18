resource "aws_instance" "myec2" {
  ami                     = var.ami
  instance_type           = var.instance_type
  security_groups = ["default", aws_security_group.allow_ssh.name]
  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = var.name
    owner = var.owner
    Env   = var.env
  }
  connection {
    type     = "ssh"
    user     = "admin"
    host     = self.public_ip
    private_key = var.private_key
    certificate = var.public_signed_key
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key-bmiles"
  public_key = var.public_ca_key
}
