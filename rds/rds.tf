resource "aws_db_instance" "myrds" {
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  identifier           = "${var.identifier}"
  name                 = "${var.name}"
  username             = "${var.username}"
  password             = "${var.password}"
  instance_class       = "${var.instance_class}"
  storage_type         = "${var.storage_type}"
  allocated_storage    = "${var.allocated_storage}"
  publicly_accessible = "${var.publicly_accessible}"
  skip_final_snapshot = "${var.skip_final_snapshot}"
 vpc_security_group_ids = ["${aws_security_group.rds-sg.id}"]
 
}