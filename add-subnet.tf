resource "aws_subnet" "public_a" {
    vpc_id = "${aws_vpc.myapp.id}"
    cidr_block = "${var.SUBNET1_CIDR}"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-1a"

    tags {
        Name = "${var.ENVIRONMENT}_SUbNET1"
    }
}

resource "aws_subnet" "public_b" {
    vpc_id = "${aws_vpc.myapp.id}"
    cidr_block = "${var.SUBNET2_CIDR}"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-1b"

    tags {
        Name = "${var.ENVIRONMENT}_SUBNET2"
    }
}

