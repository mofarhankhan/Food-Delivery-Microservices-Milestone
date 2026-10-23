resource "aws_security_group" "devops" {
  name        = "food-delivery-devops-sg"
  description = "Dedicated security group for future DevOps infrastructure"
  vpc_id      = data.aws_vpc.existing.id


  tags = {
    Name      = "food-delivery-devops-sg"
    ManagedBy = "Terraform"
    Project   = "FoodDeliveryPlatform"
  }
}