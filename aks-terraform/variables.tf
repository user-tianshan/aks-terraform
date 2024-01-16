# variables.tf

variable "client_id" {
 description = "Access key for the provider"
 type = string
 sensitive = true
 default = "97afe60d-7976-4cc2-8946-d27d788ba8bf"
}

variable "client_secret" {
 description = "Secret key for the provider"
 type = string
 sensitive = true
 default = "guz8Q~klR1520~UrlANw8VddZH5FcP3c3BX7Zb41"
}