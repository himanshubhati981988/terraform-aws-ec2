resource "aws_vpc" "myapp" {
     cidr_block = "${var.VPC_CIDR}"

tags {
        Name = "${var.ENVIRONMENT}_VPC"
    }
}

