provider "aws" {
    region = "ap-northeast-2"
}

# 이미 있는 Data를 가져 오고 싶을 때 사용 (내가 만든 VPC가 아닐때)
data "aws_vpc" "default" {
    default = true
}

data "aws_subnets" "default" {
    filter {
        name = "vpc-id"
        values = [data.aws_vpc.default.id]
    }    
}

