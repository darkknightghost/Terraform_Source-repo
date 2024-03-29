provider "aws" {
    region = "ap-northeast-2"
}

# 기본 VPC 정보
data "aws_vpc" "default" {
    filter {
        name = "tag:Name"
        values = ["eks-vpc"]
    }    
}

# Subnet 정보
data "aws_subnets" "example" {
    filter {
        name = "vpc-id" # output 이름
        values = [data.aws_vpc.default.id]
    }    
}

data "aws_subnet" "example" {
    for_each = toset(data.aws_subnets.example.ids)
    id       = each.value
}

# defaault vpc id 출력
output "vpc-id" {
    value = data.aws_vpc.default.id
}

# subnet cidr block 출력 
output "subnet_cide_blocks" {
    value = [ for s in data.aws_subnet.example : s.cidr_block ]
}