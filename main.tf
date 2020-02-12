provider "aws" {
    region = "us-east-1"
}

module "rds-1" {
  source = "./rds"
  #ami_var = "ami-062f7200baf2fa504"

}

#module "rds-2" {
  #source = "./rds"
  #ami_var = "ami-062f7200baf2fa504"

#}
module "ec2-1" {
  source = "./ec2"
  #ami_var = "ami-07ebfd5b3428b6f4d"

}
  
  #module "ec2-2" {
  #source = "./ec2"
  #ami_var = "ami-0df6cfabfbe4385b7"

#}
  
