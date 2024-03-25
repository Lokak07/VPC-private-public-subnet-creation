resource "aws_eip" "terra-eip1" {
  depends_on = [aws_route_table.terra-route-table]
}

resource "aws_eip" "terra-eip2" {
  depends_on = [aws_route_table.terra-route-table]
}