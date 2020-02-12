

####### RDS Security Group
variable "rds_from_port"{
	default = "3306"
}	

variable "rds_to_port"{
	default = "3306"
}	
variable "rds_egress_from_port"{
	default = "0"
	}
variable "rds_egress_to_port"{
	default = "0"
	}
variable "rds_protocol"{
	default = "-1"
	}

variable "protocol"{
    default = "tcp"
}
variable "cidr_blocks"{
    default = ["0.0.0.0/0"]
}
