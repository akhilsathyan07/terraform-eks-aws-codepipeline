module "eks" {
  source                  = "./modules/eks"
  aws_public_subnet       = module.vpc.aws_public_subnet
  vpc_id                  = module.vpc.vpc_id
  cluster_name            = var.cluster_name
  endpoint_public_access  = true
  endpoint_private_access = false
  public_access_cidrs     = var.public_access_cidrs
  node_group_name         = var.node_group_name
  scaling_desired_size    = var.scaling_desired_size
  scaling_max_size        = var.scaling_max_size
  scaling_min_size        = var.scaling_min_size
  instance_types          = var.instance_types
  key_pair                = var.key_pair
}

module "vpc" {
  source                  = "./modules/vpc"
  tags                    = var.tags
  instance_tenancy        = var.instance_tenancy
  vpc_cidr                =  var.vpc_cidr
 # access_ip               = "0.0.0.0/0"
  access_ip               = var.access_ip
  public_sn_count         = var.public_sn_count
  public_cidrs            = var.public_cidrs
  map_public_ip_on_launch = var.map_public_ip_on_launch
  rt_route_cidr_block     = var.rt_route_cidr_block

}

module "bastionhost" {
  source = "./modules/bastionhost"
  vpc_id = module.vpc.vpc_id
  key_name = var.key_name
  subnet_id = module.vpc.aws_public_subnet
  ami_id = var.ami_id
  }
