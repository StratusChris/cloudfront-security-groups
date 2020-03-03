output "ec2_sg_global_ids" {
  description = "Security groups created to allow ingress traffic from Amazon CloudFront global IP address ranges."
  value = list(aws_security_group.allow_cloudfront_global_ips)
}

output "ec2_sg_regional" {
  description = "Security groups created to allow ingress traffic from Amazon CloudFront regional IP address ranges."
  value = list(aws_security_group.allow_cloudfront_regional_ips)
}

output "cloudwatch_log_group" {
  description = "CloudWatch log for the Lambda function for update security group ingress rules."
  value = aws_cloudwatch_log_group.update_security_groups_lambda_log
}

output "iam_role" {
  description = "IAM role assigned to the Lambda function for updating security group ingress rules."
  value = aws_iam_role.update_security_group_ingress_rules
}

output "lambda_function" {
  description = "Lambda function for updating security group ingress rules."
  value = aws_lambda_function.update_security_group_rules
}

output "sns_subscription" {
  description = "SNS topic subscription used to trigger Lambda function."
  value = aws_sns_topic_subscription.amazon_ip_space_changed
}
