output "vpcid" {
  description = "List of IDs of instances"
  value       = ["${aws_vpc.default.id}"]
}
output "vpcname" {
  description = "List of IDs of instances"
  value       = ["${aws_vpc.default.tags.Name}"]
}
output "vm1" {
  description = "List of IDs of instances"
  value       = ["{aws_instance.machines.public_ip}"]
}