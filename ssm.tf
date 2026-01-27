module "ssm" {
  source = "git::https://github.com/ANA-Inc/terraform-aws-ssm-parameter.git?ref=master"

  name  = coalesce(var.ssm_parameter_name, "/kms/${var.env}/${local.name}")
  value = module.kms.key_id

  tags = local.tags
}
