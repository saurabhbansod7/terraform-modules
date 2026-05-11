variable "ami_id" {
   description = "AMI ID for the EC2 instance"
   type        = string
}

variable "instance_type" {
   description = "EC2 instance type"
   type        = string
}

variable "instance_name" {
   description = "Instance name of the Ec2"
   type        = string
}
variable "key_name" {
   description = "SSH key pair name"
   type        = string  
}
variable "subnet_id" {
   description = "Subnet ID"
   type        = string
}
variable "security_group_ids" {
   description = "Security group IDs"
   type        = list(string)
}

variable "tags" {
  description = "Tags for EC2 instance"
  type        = map(string)
  default     = {}
}
