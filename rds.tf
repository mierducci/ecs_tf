resource "aws_db_instance" "production" {  
  backup_window             = "03:00-04:00"  
  ca_cert_identifier        = "rds-ca-2019"  
  db_subnet_group_name      = aws_db_subnet_group.db_subnet_group.name  
  engine_version            = "15.4"  
  engine                    = "postgres"  
  skip_final_snapshot       = true  
  identifier                = "production"  
  instance_class            = "db.t3.micro"  
  maintenance_window        = "sun:08:00-sun:09:00"  
  #name                      = "fake_video_studio_db"  not valid attribute in tf
  parameter_group_name      = "default.postgres15"  
  password                  = "test12345"  
  username                  = "postgres"  
  allocated_storage         = "10"  
  port                      = "5432"  
  vpc_security_group_ids    = [aws_security_group.rds_sg.id]  
  multi_az                  = false  
  backup_retention_period   = 7  
}