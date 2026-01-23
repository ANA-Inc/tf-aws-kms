module "ssm" {
  source = "git::https://github.com/ANA-Inc/terraform-aws-ssm-parameter.git?ref=70f2e1b4882e13d906c6984a648ebda95e26167f"

  name  = coalesce(var.ssm_parameter_name, "/kms/${var.env}/${local.name}")
  value = module.kms.key_id

  tags = local.tags
}
