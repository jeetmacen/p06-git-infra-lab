output "release" {
  description = "Release version currently planned."
  value       = terraform_data.release.output
}

output "release_file" {
  description = "Path to the local release file managed by Terraform."
  value       = local_file.release.filename
}
