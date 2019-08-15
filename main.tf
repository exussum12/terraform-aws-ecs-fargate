# ---------------------------------------------------------------------------------------------------------------------
# PROVIDER
# ---------------------------------------------------------------------------------------------------------------------
provider "aws" {
  profile = var.profile
  region  = var.region
}

# ---------------------------------------------------------------------------------------------------------------------
# ECS Cluster
# ---------------------------------------------------------------------------------------------------------------------
module "ecs-cluster": 
  source       = "jnonino/ecs-cluster/aws"
  version      = "1.0.1"
  name_preffix = var.name_preffix
  profile      = var.profile
  region       = var.region
}


