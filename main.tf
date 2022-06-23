//--------------------------------------------------------------------
// Variables

# ll

//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/npl-terraform/compute/aws"
  version = "1.0.15"
  aws_region = "us-west-1"

  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJY4sYcQxD7T2gORFCfzFoeadz8Ft6TCEfTAklKff+N+DvvLh3yzrpR3SvFK6ZsK7B8TACfxpAdSKOS53H8ko9bHr5b0001swGz27w17sB+XU/V8m7FjEFeZP/JNGBhoz62rIpkrXPb8JBe8nCsiQbtBeYltWCqwY/0bGVmjAKNQ2aNe+JvE+GfUj+7m5PPLmErbzScLWa6IuHfZON8iFZt4OZIOMmCqyLiUtElzPjQ1jqbUwvN6zp1N51sBh8695URpK165FczBNLMwHsq+jNGdGNXUI2+VKFSPxiVyd1GIknQbindijNVcHuJCmYa9MtMMtpPMU/2LNcKhk39v9r ubuntu@ip-172-31-81-5"
  public_sg = module.networking.public_sg
  public_subnets = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/npl-terraform/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-west-1"
}