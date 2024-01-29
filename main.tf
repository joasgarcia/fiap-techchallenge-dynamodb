terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "ASIAVNIY2D7VSNFWLLOB"
  secret_key = "88MLXrPCW2rCbJjvhEbtFhgI+PhMjOiRNQzgI4cf"
  token = "FwoGZXIvYXdzEE4aDJMURPnqACpP9qxznyLFAc0adQyYtmZVNNMSfNff+pYDTokrtal/q0AkY0xu2L605Wz+CE3B6rwUj7Gtam66xbvjjbrwUdiW8qCkH1wQp8LhtPH7GCwC172tav+1xUTJ7KhEtd1/NQiROBKARkuQJwhAQRHZpFQLfNuprRD6LxoKpJ5Mv9fd+Hpl3oLtt+0iwe7BGLRZSGIWUwue88Ifhkb+D++WRqRHVbRxgvVPgMiaNZjwsiNtyTT+Gi3gTM47ssuUMbojEkinv7a+xm2LXYk80IuaKO+Q4K0GMi0JgYXW/OQzbpWZE51ahuRuLLxhVQCihbSL1/nwiTz8jwnV8bYzzjopP9ApOZU="
}

resource "aws_dynamodb_table" "payment_table" {
  name         = "Payment"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}
