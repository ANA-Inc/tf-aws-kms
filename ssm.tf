module "ssm" {
  source = "git::https://github.com/ANA-Inc/terraform-aws-ssm-parameter.git?ref=b7a55688745b7820bd6c63d8c6815b1694dff5dd"

  name  = coalesce(var.ssm_parameter_name, "/kms/${var.env}/${local.name}")
  value = module.kms.key_id

  tags = local.tags
}
