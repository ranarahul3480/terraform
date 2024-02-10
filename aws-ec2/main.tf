module "ec2_instance_linux" {
  source  = "./modules"

  name = "linux"

  ami = data.aws_ami.linux.id
  instance_type          = var.instance_type
  key_name               = var.key_name

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance_ubuntu" {
  source  = "./modules"

  name = "ubuntu-instance"

  ami = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.key_name

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance_windows" {
  source  = "./modules"

  name = "windows-instance"

  ami = data.aws_ami.windows.id
  instance_type          = var.instance_type
  key_name               = var.key_name

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}