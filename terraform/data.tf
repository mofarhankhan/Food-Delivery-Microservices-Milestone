
data "aws_vpc" "existing" {
  id = "vpc-03bb6fe34af1cdbe0"
}

data "aws_subnet" "existing" {
  id = "subnet-0f5854646db42706b"
}
