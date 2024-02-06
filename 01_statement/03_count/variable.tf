variable "user_names" {
    description = "Create IAM users with these names"
    type        = list(string)
    default     = ["aws01-neo", "aws01-trinity", "aws01-morpheus"]
}