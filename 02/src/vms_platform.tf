variable "vm_web_image_name" {
  type = string
  default = "ubuntu-2004-lts"
  description = "ununtu release name"
}

# variable "vm_web_instance" {
#   type = object({
#     name: string,
#     platform_id: string,
#     cores: number,
#     memory: number,
#     core_fraction: number
#     })
#   default = { 
#     name = "netology-develop-platform-web",
#     platform_id = "standard-v1",
#     cores = 2,
#     memory = 1,
#     core_fraction = 5
#     }
# }

variable "vm_db_zone_b_cidr" {
  type = list(string)
  default = [ "10.0.2.0/24" ]
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "db_subnet" {
  type        = string
  default     = "develop-db"
  description = "db_subnet"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_image_name" {
  type = string
  default = "ubuntu-2004-lts"
  description = "ununtu release name"
}

variable "platform_id" {
  default = "standard-v1"
  type = string
}
# variable "vm_db_instance" {
#   type = object({
#     name: string,
#     platform_id: string,
#     cores: number,
#     memory: number,
#     core_fraction: number
#     })
#   default = { 
#     name = "netology-develop-platform-db",
#     platform_id = "standard-v1",
#     cores = 2,
#     memory = 2,
#     core_fraction = 20
#     }
# }

variable "vms_resources" {
  type = map(map(number))
  default = {
    "web" = {
      "cores" = 2
      "memory" = 1
      "core_fraction" = 5
    }
    "db" = {
      "cores" = 2
      "memory" = 2
      "core_fraction" = 20
    }
  }
}

variable "vms_metadata" {
  type = map(string)
  default = {
    "serial-port-enable" = "1"
    "ssh-keys"           = "ubuntu"
  }
}