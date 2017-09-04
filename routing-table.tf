resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.myapp.id}"
  tags {
      Name = "${var.ENVIRONMENT}_ROUTING_TABLE"
  }
  route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }
}
