module "ssm" {
  source  = "git::https://github.com/terraform-aws-modules/terraform-aws-ssm-parameter.git?ref=ff3a868a2f88b9540691daa87670b4422abf0bec"

  name  = coalesce(var.ssm_parameter_name, "/kms/${var.env}/${local.name}")
  value = module.kms.key_id

  tags = local.tags
}
