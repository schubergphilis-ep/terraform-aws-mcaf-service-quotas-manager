locals {
  account_id     = data.aws_caller_identity.current.account_id
  account_region = var.region != null ? var.region : data.aws_region.current.region

  has_increase_config = sum([for item in var.quotas_manager_configuration : (item.quota_increase_config == null ? 0 : length(item.quota_increase_config))]) > 0

  # S3 bucket names are limited to 63 characters and bucket name prefixes to 37 characters: truncate the bucket name or
  # prefix to fit the "-access-logs" suffix, and trim any "-" or "." the truncation leaves at the end. A prefix that fits
  # is used as is, so the names of existing access logs buckets don't change.
  access_logs_bucket_name   = var.bucket_name != null ? "${trim(substr(var.bucket_name, 0, 51), "-.")}-access-logs" : null
  access_logs_bucket_prefix = var.bucket_name == null && var.bucket_prefix != null ? "${length(var.bucket_prefix) > 25 ? trim(substr(var.bucket_prefix, 0, 25), "-.") : var.bucket_prefix}-access-logs" : null

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
