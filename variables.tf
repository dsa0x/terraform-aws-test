variable "retention_policy" {
  description = "Configuration of the bucket's data retention policy for how long objects in the bucket should be retained."
  type = object({
    is_locked        = optional(bool)
    retention_period = optional(number)
  })
  default = {}
}

variable "encryption" {
  description = "A Cloud KMS key that will be used to encrypt objects inserted into this bucket"
  type = any
  default = null
}

variable "versioning" {
  description = "While set to true, versioning is fully enabled for this bucket."
  type        = bool
  default     = true
}

output "enc" {
  value = var.encryption
}

output "ret" {
    value = var.retention_policy
}

