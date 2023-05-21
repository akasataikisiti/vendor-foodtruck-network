resource "aws_nat_gateway" "ngw1" {
  allocation_id = aws_epi.eip_1.id
  subnet_id = aws_subnet.public_1.id

  depends_on = [
    aws_internet_gateway.ig
  ]

  tags = {
    Name = "#{var.app_name}-ngw1"
    }
}

resource "aws_nat_gateway" "ngw2" {
  allocation_id = aws_epi.eip_2.id
  subnet_id = aws_subnet.public_2.id

  depends_on = [
    aws_internet_gateway.ig
  ]

  tags = {
    Name = "#{var.app_name}-ngw2"
    }
}
