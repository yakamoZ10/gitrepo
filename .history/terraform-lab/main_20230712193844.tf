variable "access_key"{

    description = "acces key id for the provider"
}

variable "secret_key" {
    
    description = "Secret key for the provider"
}

provider "aws" {
    region = "eu-central-1"
    access_key = var.access_key
    secret_key = var.secret_key
}
