output "vpc_id" {
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  value       = module.vpc.public_subnets
}

output "aws_iam_openid_connect_provider_arn" {
  value = aws_iam_openid_connect_provider.oidc_provider.arn 
}

output "aws_iam_openid_connect_provider_extract_from_arn" {
   value = local.aws_iam_oidc_connect_provider_extract_from_arn
}