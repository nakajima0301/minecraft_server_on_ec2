# -----------------------------------
# AWS
# -----------------------------------
variable "profile" {
  description = "AWS Profile"
  type        = string
  default     = "ppt"
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-1"
}

# -----------------------------------
# App
# -----------------------------------
variable "app_name" {
  description = "minecraft_server_on_ec2"
  type        = string
  default     = "minecraft_server_on_ec2"
}

# -----------------------------------
# Segment
# -----------------------------------
variable "root_segment" {
  description = "VPC root segment"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_segment_a" {
  description = "Public segment a"
  type        = string
  default     = "10.0.0.0/24"
}

# -----------------------------------
# AZ
# -----------------------------------
variable "public_segment_a_az" {
  description = "Public segment a AZ"
  type        = string
  default     = "ap-northeast-1a"
}