provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATBRPQHEAMAGVK763"
  secret_key = "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"
}

# Infra-Structure readyness for project1 : Banking

#Jenkins master Node : VM1
resource "aws_instance" "my_ec2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "Jenkins_master"
  }
}

#Jenkins slave Node (Build server) VM2

resource "aws_instance" "my_ec2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "Jenkins SlaveNode(Build server)"
  }
}

# Kubernetes Master Node VM3

resource "aws_instance" "my_ec2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "K8s-Master"
  }
}

# Kubernetes Master Node VM4

resource "aws_instance" "my_ec2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "K8s-Node1"
  }
}

# Kubernetes Master Node VM5

resource "aws_instance" "my_ec2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "K8s-Node2"
  }
}

# Prometheus & Grafana Monitoring Server VM6

resource "aws_instance" "my_ec2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "Prometheus & Grafana Monitoring"
  }
}






