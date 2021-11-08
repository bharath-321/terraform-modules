provider "aws" {
    region = "us-east-1"
}

#Create Infra for testing Env
module "Teasting-Env" {
  source = "./modules/base_infra"

  #aws_region          = "us-east-1"
  vpc_cidr            = "10.1.0.0/16"
  public_subnet1_cidr = "10.1.1.0/24"
  public_subnet2_cidr = "10.1.2.0/24"
  public_subnet3_cidr = "10.1.3.0/24"
  vpc_name            = "Testvpc-1"
  IGW_name            = "Testvpc-1-igw"
  public_subnet1_name = "Test_env_Subnet1-testing"
  public_subnet2_name = "Test_env_Subnet2-testing"
  public_subnet3_name = "Test_env_Subnet3-testing"
  Main_Routing_Table  = "Test_env_table-testing"
  key_name            = "vasireddy22"
  environment         = "test"
  cidrs = ["10.1.0.0/16","10.1.2.0/24","10.1.1.0/24"]
  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
  dnsname = "megastar.com"
}

#Create Infra for Production Env
#module "Prod-Env" {
  #source = "./modules/base_infra"

#}
