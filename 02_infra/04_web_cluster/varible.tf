# variable "vpc_id" {
#     default = "vpc-02177a7405e00959d"
# }

# variable "subnet_2a" {
#     default = "subnet-0f02b373f7f78e4a2"
# }

# variable "subnet_2c" {
#     default = "subnet-09f682d70ced2e4a1"
# }

variable "web_port" {  
  description = "The port will use for HTTP requests"  
  type        = number
  default     = 8080
}

variable "ssh_port" {
  description = "The port will use for SSH requests"  
  type        = number
  default = 22
}