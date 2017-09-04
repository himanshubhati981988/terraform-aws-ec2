resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.myapp.id}"

    tags {
        Name = "${var.ENVIRONMENT}_GW"
    }
}

