resource "aws_db_instance" "db_instance" {
  identifier = "${var.ENVIRONMENT}-db"
  name = "bastiondb"
  allocated_storage = 10
  engine               = "mysql"
  engine_version       = "5.6.35"
  instance_class       = "db.t2.large"
  username = "bastiondb"
  password = "bas123456"
  storage_encrypted = false
  db_subnet_group_name = "${aws_db_subnet_group.myapp-db.id}"
  vpc_security_group_ids = ["${aws_security_group.myapp_mysql_rds.id}"]

  tags {
    Name = "${var.ENVIRONMENT}_DB"
  }
}

