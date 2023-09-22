provider "aws" {
    region = "eu-west-1"
    profile    = "default"
}


data "aws_vpc" "existing_vpc" {
    default = true
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = data.aws_vpc.existing_vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "eu-west-1a"
}