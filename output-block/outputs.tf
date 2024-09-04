# we can name this file whatever we want
# or you can create this block inside main.tf file


# static output block

output "hello-world" {
  description = "printing a hello world text output"
  value       = "Hello world"
}

output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "public-url" {
  description = "Public URL for our web-server"
  value       = "https://${aws_instance.web_server.private_ip}:8080/index.html"
}

output "vpc_information" {
  description = "VPC Information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}
