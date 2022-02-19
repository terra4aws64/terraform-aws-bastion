output "arn" {
  value       = module.ec2.ec2_arn
  description = "EC2: ARN"
}

output "public_dns" {
  value       = module.ec2.ec2_public_dns
  description = "EC2: Dynamic public DNS name"
}

output "public_ip" {
  value       = module.ec2.ec2_public_ip
  description = "EC2: Dynamic public IP"
}
