resource "aws_security_group" "rds-sg" {
  name = "rds-sg"
  description = "RDS Security Group"

  ingress {
    from_port = "${var.rds_from_port}"
    to_port   = "${var.rds_to_port}"
    protocol  = "${var.protocol}"
    cidr_blocks = "${var.cidr_blocks}"
  }

  egress {
    from_port = "${var.rds_egress_from_port}"
    to_port = "${var.rds_egress_to_port}"
    protocol = "${var.rds_protocol}"
    cidr_blocks = "${var.cidr_blocks}"
  }
}

