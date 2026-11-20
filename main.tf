# Built-in resource: no cloud account or credentials are needed.
resource "terraform_data" "release" {
  input = var.release
}

resource "local_file" "release" {
  filename = "${path.module}/release.txt"
  content  = "Release: ${terraform_data.release.output}\n"
}
