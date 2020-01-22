# Redirect email and store it in S3 bucket
resource "aws_ses_receipt_rule" "store" {
  name          = "store"
  rule_set_name = "default-rule-set"
  recipients    = [""]
  enabled       = true
  scan_enabled  = true


  s3_action {
    bucket_name = "ChangeThis:BucketName"
    position    = 1
  }
}
