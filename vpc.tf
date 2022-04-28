module "vpc" {
    source  = "ElGoodo/terraform-google-network"
    version = "~> 3.0"

    project_id   = var.project
    network_name = "example-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "gaurav-subnet"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.region
        }
    ]
}
