output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the EC2 security group"
  value       = aws_security_group.ec2_sg.id
}

output "ec2_instance_id" {
  description = "ID of the target EC2 instance"
  value       = aws_instance.app.id
}

output "ec2_public_ip" {
  description = "Public IP of the target EC2 instance"
  value       = aws_instance.app.public_ip
}

output "iam_role_name" {
  description = "IAM role attached to the target EC2 instance"
  value       = aws_iam_role.ec2_role.name
}
