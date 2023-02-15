include {
  path = find_in_parent_folders()
}

terraform {
  source = "${path_relative_from_include()}/module"
}

inputs = {
  user_defined_string = lower(split("/", "${path_relative_to_include()}")[0])
  additional_user_defined_string = length(split("/", "${path_relative_to_include()}")) > 1 ? lower(split("/", "${path_relative_to_include()}")[1]) : lower(split("/", "${path_relative_to_include()}")[0])
  additional_user_defined_string_2 = lower(replace("${path_relative_to_include()}", "/", "-"))
  get_parent_terragrunt_dir = "${get_parent_terragrunt_dir()}"
  get_original_terragrunt_dir = "${get_original_terragrunt_dir()}"
  get_terragrunt_dir = "${get_terragrunt_dir()}"
  path_relative_to_include = "${path_relative_to_include()}"
  path_relative_from_include = "${path_relative_from_include()}"
  #get_repo_root = "${get_repo_root()}"
  get_path_from_repo_root = "${get_path_from_repo_root()}"
  get_path_to_repo_root = "${get_path_to_repo_root()}"
  get_platform = "${get_platform()}"
}
