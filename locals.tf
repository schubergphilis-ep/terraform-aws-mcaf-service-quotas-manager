locals {
  account_id     = data.aws_caller_identity.current.account_id
  account_region = var.region != null ? var.region : data.aws_region.current.region

  has_increase_config = sum([for item in var.quotas_manager_configuration : (item.quota_increase_config == null ? 0 : length(item.quota_increase_config))]) > 0

  powertools_layer_parts = split(":", data.aws_ssm_parameter.powertools_layer_arn.value)

  powertools_layer_arn = (
    var.powertools_layer_version != null
    ? "${join(":", slice(local.powertools_layer_parts, 0, length(local.powertools_layer_parts) - 1))}:${var.powertools_layer_version}"
    : data.aws_ssm_parameter.powertools_layer_arn.value
  )
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_ssm_parameter" "powertools_layer_arn" {
  name = "/aws/service/powertools/python/x86_64/python3.11/latest"
}
