terraform {
  backend "s3" {
    bucket       = "voicebot-terraform-state-12345"
    key          = "terraform.tfstate"
    region       = "ca-central-1"
    use_lockfile = true
  }
}
