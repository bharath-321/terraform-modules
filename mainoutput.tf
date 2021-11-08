output "vpcid" {
  description = "List of IDs of instances"
  value       = ["${module.Teasting-Env.vpcid}"]
}
output "vpcname" {
  description = "List of IDs of instances"
  value       = ["${module.Teasting-Env.vpcname}"]
}
output "vm1" {
  description = "List of IDs of instances"
  value       = ["{module.Testing-Env.vm1}"]
}