cluster_name = "eks-cluster-07"
key_pair = "key-akhil"
instance_types = ["t3.medium"]
node_group_name = "eks-cluster-07-node-group"
public_access_cidrs = ["0.0.0.0/0"]
tags = "cluster-vpc"
vpc_cidr = "10.0.0.0/16"
instance_tenancy = "default"
public_sn_count = "2"
public_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
rt_route_cidr_block = "0.0.0.0/0"
access_ip              = "0.0.0.0/0"
scaling_desired_size = "2"
scaling_max_size = "2"
scaling_min_size = "2"
map_public_ip_on_launch = "true"
key_name = "key-akhil"
ami_id = "ami-0f7197c592205b389"
