resource "null_resource" "create_user_in_db" {
depends_on = ["aws_db_instance.myrds"]
provisioner "local-exec" {
	command = "mysql -u ${aws_db_instance.myrds.username} -p${aws_db_instance.myrds.password} -h ${aws_db_instance.myrds.address} < file.sql"
	}
}