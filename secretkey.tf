resource "aws_secretsmanager_secret" "secret" {
  name = "secret"
}

resource "aws_secretsmanager_secret_version" "version" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = tls_private_key.mykey.id
}

output "instance_id" {
  value = aws_instance.ec2host.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.secret.id
}

output "secretsmanager_secret_version" {
  value = aws_secretsmanager_secret_version.version.id
}