variable "aws_region"{ 
#    description="Region to Launch Server's" 
#    default="ap-south-1" 
     default = "us-east-1"
    }

variable "engine"{
    description = "RDS Engine"
    default = "mysql"
    }

variable "engine_version"{
  default = "5.7.22"
    }

variable "identifier"{
  default = "mydbinstance"
    }

variable "name"{
   default = "mydb"
    }

variable "username"{
  default = "admin"
    }
variable "password"{
    default = "admin1234"
    }

variable "instance_class"{
     default = "db.t2.micro"
    }

variable "storage_type"{
    default = "gp2"
    }
  
variable "allocated_storage"{
    default = "20"
} 

variable "publicly_accessible"{
    default = true
} 

variable "skip_final_snapshot"{ 
   default = true
}



