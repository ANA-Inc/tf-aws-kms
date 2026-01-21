# provider "aws" {
#   region = local.region
#   default_tags {
#     tags = local.tags
#   }
# }

module "std" {
  source = "git::https://github.com/ANA-Inc/tf-standards.git?ref=main"

  accounts = [local.account]
  prefix   = local.prefix
  client   = local.client
  project  = local.project
  env      = local.env
  region   = local.region
  name     = local.name_std
}

#
# AWS Data Variables
#
data "aws_caller_identity" "this" {}