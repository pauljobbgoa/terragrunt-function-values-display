variable "user_defined_string" {
  type        = string
  description = "User defined string."
  validation {
    condition     = can(regex("^[\\w\\s]+$", var.user_defined_string))
    error_message = "Special characters are not allowed."
  }
}

variable "additional_user_defined_string" {
  type        = string
  description = "Additional user defined string."
  default     = ""
  validation {
    condition     = can(regex("^[\\w\\s]+$", var.additional_user_defined_string))
    error_message = "Special characters are not allowed."
  }
}

variable "additional_user_defined_string_2" {
  type        = string
  description = "Additional user defined string 2."
  default     = ""
}

variable "get_parent_terragrunt_dir" {
  type        = string
  default     = ""
  description = "returns the absolute directory where the Terragrunt parent configuration file (by default terragrunt.hcl) lives"
}

variable "get_original_terragrunt_dir" {
  type        = string
  default     = ""
  description = "returns the directory where the original Terragrunt configuration file (by default terragrunt.hcl) lives"
}

variable "get_terragrunt_dir" {
  type        = string
  default     = ""
  description = "returns the directory where the Terragrunt configuration file (by default terragrunt.hcl) lives"
}

variable "path_relative_to_include" {
  type        = string
  default     = ""
  description = "returns the relative path between the current terragrunt.hcl file and the path specified in its include block"
}

variable "path_relative_from_include" {
  type        = string
  default     = ""
  description = "returns the relative path between the path specified in its include block and the current terragrunt.hcl file"
}

variable "get_repo_root" {
  type        = string
  default     = ""
  description = "returns the absolute path to the root of the Git repository"
}

variable "get_path_from_repo_root" {
  type        = string
  default     = ""
  description = "returns the path from the root of the Git repository to the current directory"
}

variable "get_path_to_repo_root" {
  type        = string
  default     = ""
  description = "returns the relative path to the root of the Git repository"
}

variable "get_platform" {
  type        = string
  default     = ""
  description = "returns the current Operating System"
}

output "user_defined_string" {
  value = var.user_defined_string
}

output "additional_user_defined_string" {
  value = var.additional_user_defined_string
}

output "additional_user_defined_string_2" {
  value = var.additional_user_defined_string_2
}

output "get_parent_terragrunt_dir" {
  value = var.get_parent_terragrunt_dir
}

output "get_original_terragrunt_dir" {
  value = var.get_original_terragrunt_dir
}

output "get_terragrunt_dir" {
  value = var.get_terragrunt_dir
}

output "path_relative_to_include" {
  value = var.path_relative_to_include
}

output "path_relative_from_include" {
  value = var.path_relative_from_include
}

output "get_repo_root" {
  value = var.get_repo_root
}

output "get_path_from_repo_root" {
  value = var.get_path_from_repo_root
}

output "get_path_to_repo_root" {
  value = var.get_path_to_repo_root
}

output "get_platform" {
  value = var.get_platform
}
