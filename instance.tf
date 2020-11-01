resource "aws_instance" "web" {
    ami           = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = [ "${aws_security_group.websg.name}" ]
    user_data = file("installations.sh")

    tags = {
      Name = "springboot-mysql"
    }
}
