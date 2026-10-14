variable "aws_region" {
  description = "AWS region for this project"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix for project resource names"
  type        = string
  default     = "terraform-demo"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name in the selected region"
  type        = string
}

variable "admin_cidr" {
  description = "Your public IP address followed by /32, for SSH access"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.admin_cidr)) && split("/", var.admin_cidr)[1] == "32"
    error_message = "Use a single IPv4 address with a /32 prefix, for example 203.0.113.10/32."
  }
}
