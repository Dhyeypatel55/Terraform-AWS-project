resource "aws_instance" "test_vm" {
  ami           = "ami-0e670eb768a5fc3d4"
  instance_type = "t3.micro"

  tags = {
    Name = "Dhyey-EC2"
  }
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
}


module "s3" {
  source = "./modules/s3"

  bucket_name = "dhyey-terraform-website-2026"
}



module "ec2" {
  source = "./modules/ec2"

  vpc_id      = module.vpc.vpc_id
  subnet_id   = module.vpc.subnet_id
  bucket_name = module.s3.bucket_name
}
