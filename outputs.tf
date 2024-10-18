output "EC2_FQDN" {
    value = aws_instance.myec2.public_dns
}
output "EC2_Public_IP" {
    value = aws_instance.myec2.public_ip
}
output "Webserver_url" {
    value = "http://${aws_instance.myec2.public_dns}/"
}