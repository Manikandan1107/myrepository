provider "aws" {
    region             = "ap-south-1"
}
# create a mysql db
resource "aws_db_instance" "mysql_db"{
    identifier              = "mysqldatabase"
    storage type            = "gp2"
    allocated storage       = 20
    engine                  = "mysql"
    engine_version          = "8.0"
    instance_class          = "db.t2.micro"
    port                    = "3306"
    db_name                 = "mysqlDB"
    username                = "admin"
    password                = "admin123"
    parameter_group_name    = "default.mysql8.0"
    availability zone       = "asia-south-1b"
    publicity_accessible    = true
    deletion_protection     = true
    skip_final_snapshot     = true
    tags = {
        name                = "Mysql RDS Instance"
    }

}
