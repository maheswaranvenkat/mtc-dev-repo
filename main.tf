//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/npl-terraform/compute/aws"
  version = "1.0.11"
  aws_region = "us-east-1"

  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCoR//MITnBACgAugld6WokYeP5wsxm4infZr6qz4bAG1IoOKGP9UHNmS1+vt1rcpmZep/YPuA0HmUBHaHvelvfvTSCGUGkcmuVKyo9fKotMbE7n1p3/FafQDJsvEVKltpm3pJurD+FA0YCINm4uXIu3NcIE6OdmFwhAa3HACT6Ov8Wfcw9kH0Lg9gQ0sjgymQgmC4fPi5zz7gFI8ciNZQZRcUdnIi51PjmgH8OKgOCWLvn0XNzuMd+Jj5n3CNW7AygjMZR7quJXVSEdGj8czxg5rC84nVtE9vsitRdBYw1IHAsP3fVZgMC65QT/wIiKNAiLL7JiK8S/FTkJXyEEmfx3tiv4Dud5ERApwBPUF0kE4JNK7Gt8LXMZKxCTdA0pW6SeVTEuELAVuFXeuejN/PndP0WymInmg27DuB00UHfPrWtmS+bv2YM3Aw8oxVhW4hLEbCKh/q11uc3VJ+zzMDm6y/wQliYuRnyUfaXaGU7FjHwdKcrSeCPF4/7kmclU4c= mahesh@Maheshs-MacBook-Pro.local"
  public_sg = module.networking.public_sg
  public_subnets = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/npl-terraform/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}