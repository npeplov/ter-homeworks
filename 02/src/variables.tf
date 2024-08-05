###cloud vars
variable "token" {
 type        = string
 description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = "b1gmi2po52jgrkojesr0"
}

variable "folder_id" {
  default = "b1gbprt1137p9ib1uet2"
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "instance_name" {
  type        = string
  default = "netology-develop-platform"
}

variable "name_web" {
  type        = string
  default = "web"
}

variable "name_db" {
  type        = string
  default = "db"
}