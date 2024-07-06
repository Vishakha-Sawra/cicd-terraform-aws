# EC2 instance
resource "aws_instance" "server" {
    ami             = "ami-06c68f701d8090592"  
    instance_type   = "t2.micro"
    subnet_id       = var.subnet_id
    security_groups = [var.security_group_id]

    tags = {
        Name = "myserver"
    }
}
