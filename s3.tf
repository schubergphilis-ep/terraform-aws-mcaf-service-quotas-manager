module "service_quotas_manager_bucket" {
  source  = "schubergphilis-ep/mcaf-s3/aws"
  version = "~> 4.0.0"

  name          = var.bucket_name
  name_prefix   = var.bucket_name == null ? var.bucket_prefix : null
  force_destroy = true
  kms_key_arn   = var.kms_key_arn
  region        = var.region
  versioning    = true
  tags          = var.tags

  lifecycle_rule = [
    {
      id      = "default"
      enabled = true

      abort_incomplete_multipart_upload = {
        days_after_initiation = 7
      }

      noncurrent_version_expiration = {
        noncurrent_days = 14
      }
    }
  ]

  logging = var.s3_access_logging.enabled ? {
    target_bucket = local.access_logs_bucket_name
    target_prefix = "${local.bucket_base_name}-"
    target_object_key_format = {
      format_type           = "partitioned"
      partition_date_source = "EventTime"
    }
  } : null
}

module "access_logs" {
  count = var.s3_access_logging.enabled ? 1 : 0

  source  = "schubergphilis-ep/mcaf-s3/aws"
  version = "~> 4.0.0"

  name   = local.access_logs_bucket_name
  region = var.region
  tags   = var.tags

  lifecycle_rule = [
    {
      id      = "RetentionPolicy"
      enabled = true

      abort_incomplete_multipart_upload = {
        days_after_initiation = 3
      }

      expiration = {
        days = var.s3_access_logging.expiration_days
      }

      noncurrent_version_expiration = {
        noncurrent_days = 7
      }

      transition = [
        {
          days          = var.s3_access_logging.transition_days
          storage_class = var.s3_access_logging.transition_storage_class
        }
      ]
    }
  ]

  logging_source_bucket_arns = [module.service_quotas_manager_bucket.arn]
}

resource "aws_s3_object" "service_quotas_manager_config" {
  bucket = module.service_quotas_manager_bucket.name
  key    = "quotas_manager_config.json"
  content = jsonencode([
    for cfg in var.quotas_manager_configuration : merge(cfg, {
      role_name = var.assume_role.name
      role_path = var.assume_role.path
    })
  ])
  region = var.region
}
