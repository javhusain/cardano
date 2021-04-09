variable "ami" {
  description = "Value of the ami"
  type        = string
  default     = "ami-0533f2ba8a1995cf9"
}
variable "instance_name" {
  description = "Value of the instance type"
  type        = string
  default     = "t2.medium"
}
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "relay node"
}