module "ami" {
  source = "../aws_ami"
}

module "ec2" {
  source        = "../aws_ec2"
  vpc_subnet_id = var.vpc_subnet_id
  ec2_key       = var.ec2_key
  ami_id        = module.ami.amazonlinux2_ami_id
  ec2_name      = local.name
  ec2_size      = "t2.micro"
  ec2_public    = true
  vpc_sg_ids    = [aws_security_group.bastion.id]

}

resource "aws_security_group" "bastion" {
  name   = local.name
  vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["186.108.203.176/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = local.name
  }
}
