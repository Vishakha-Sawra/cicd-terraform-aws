# EC2 instance
resource "aws_instance" "server" {
    ami             = "ami-id"  
    instance_type   = "t2.micro"
    subnet_id       = var.subnet_id
    security_groups = [var.security_group_id]

    tags = {
        Name = "myserver"
    }
}
