output "vpc_id"{
  value = aws_vpc.main-vpc.id
}

output "vpc_arn"{
  value = aws_vpc.main-vpc.arn
}

output "subnet_ids"{
  value = aws_subnet.subnet.*.id
}

output "subnet_arns"{
  value = aws_subnet.subnet.*.arn
}

output "subnet_public"{
  value = aws_subnet.subnet.*.map_public_ip_on_launch
}

output "subnet_zones"{
  value = aws_subnet.subnet.*.availability_zone
}

output "subnet_cidrs"{
  value = aws_subnet.subnet.*.cidr_block
}
