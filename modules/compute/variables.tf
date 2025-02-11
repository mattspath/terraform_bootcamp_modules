variable "env" {
  type        = string
  description = "The AWS environment"
}

variable "region" {
  type        = string
  description = "The AWS region"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs"

  validation {
    condition     = length(var.private_subnet_ids) >= 2
    error_message = "Must privide at least two private subnet IDs"
  }
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"

  validation {
    condition     = length(var.public_subnet_ids) >= 2
    error_message = "Must privide at least two public subnet IDs"
  }
}

variable "vpc_id" {
    type = string
}