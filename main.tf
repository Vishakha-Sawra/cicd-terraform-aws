module "vpc" {
    source = "./vpc"
}

module "ec2" {
    source            = "./web"
    subnet_id         = module.vpc.public_subnet_id
    security_group_id = module.vpc.public_security_group_id
}