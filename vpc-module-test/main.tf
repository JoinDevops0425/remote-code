module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/JoinDevops0425/terraform/tree/91e1b26fb7548d2b00adc82b2deae09d47016748/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    public_subnet_cidr = var.public_subnet_cidrs
    private_subnet_cidr = var.private_subnet_cidrs
    database_subnet_cidr = var.database_subnet_cidrs

    is_peering_required = true
}
