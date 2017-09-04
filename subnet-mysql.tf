resource "aws_db_subnet_group" "myapp-db" {
    name = "subnet-mysql"
    description = "Our main group of subnets"
    subnet_ids = ["${aws_subnet.public_a.id}", "${aws_subnet.public_b.id}"]
    tags {
        Name = "${var.ENVIRONMENT}_SUBNET_MYSQL"
    }
}

