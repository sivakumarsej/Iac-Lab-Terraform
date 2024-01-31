resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.rds_subnet_group_name
  subnet_ids = [module.vpc.private_subnets[0].id,module.vpc.private_subnets[1].id]

  tags = {
    Name = "dev" 
  }
}

resource "aws_security_group" "rds_sg" {
  vpc_id = module.vpc.vpc_id
  name = var.rds_sg
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "mysql" {
  allocated_storage    = var.rds_storage_size
  availability_zone    = var.rds_az
  identifier           = var.rds_db_name
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  username             = var.rds_db_username
  password             = var.rds_db_password
  db_name              = var.rds_database_name
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
  parameter_group_name = var.rds_parameter_group_name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot  = var.rds_skip_final_snapshot
}