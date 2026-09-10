locals {
  account_id     = data.aws_caller_identity.current.account_id
  account_region = var.region != null ? var.region : data.aws_region.current.region

  has_increase_config = sum([for item in var.quotas_manager_configuration : (item.quota_increase_config == null ? 0 : length(item.quota_increase_config))]) > 0

  bucket_base_name        = var.bucket_name != null ? var.bucket_name : var.bucket_prefix
  access_logs_bucket_name = "${local.bucket_base_name}-access-logs-${local.account_id}"
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}
