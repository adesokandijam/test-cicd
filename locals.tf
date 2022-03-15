locals {
    operations_config_map = {
        "production" = {
            "network" = {
                "cidr" = "10.124.0.0/16"
            }
        }
        "staging" = {
            "network" = {
                "cidr" = "10.125.0.0/16"
            }
        }
        development = {
            "network" = {
                "cidr" = "10.126.0.0/16"
            }
        }
        default = {
            "network" = {
                "cidr" = "10.123.0.0/16"
            }
        }
    }
}

locals {
  cfg = local.operations_config_map[terraform.workspace]
}