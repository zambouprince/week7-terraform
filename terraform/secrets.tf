resource "aws_secretsmanager_secret" "openai" {
  name = "voicebot/openai"
}

resource "aws_secretsmanager_secret_version" "openai_value" {
  secret_id     = aws_secretsmanager_secret.openai.id
  secret_string = jsonencode({
    OPENAI_API_KEY = "REPLACE_ME"
  })
}
