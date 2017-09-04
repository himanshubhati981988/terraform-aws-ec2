resource "aws_security_group" "myapp_mysql_rds" {
  name = "web-mysqlserver"
  description = "Allow access to MySQL RDS"
  vpc_id = "${aws_vpc.myapp.id}"

  tags {
    Name = "${var.ENVIRONMENT}_MYSQL_SG"
  }
}

resource "aws_security_group_rule" "security_rul" {
  security_group_id = "${aws_security_group.myapp_mysql_rds.id}"
  type = "ingress"
  from_port = 3306
  to_port = 3306
  protocol = "tcp"
  cidr_blocks = [
#    "${aws_instance.web01.private_ip}","${aws_instance.web02.private_ip}","${aws_instance.web03.private_ip}"
     "10.100.0.0/16"
 ]
}


resource "aws_security_group_rule" "security_rul1" {
  security_group_id = "${aws_security_group.myapp_mysql_rds.id}"
  type = "ingress"
  from_port = 1024
  to_port = 65535
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}

