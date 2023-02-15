.PHONY: test init

clean:
	@find . -name .terragrunt-cache -type d -exec rm -rf {} +
	@find . -name .terraform -type d -exec rm -rf {} +

fmt:
	@terragrunt hclfmt
	@terraform fmt -recursive

plan-application:
	@echo "Planning for application project";
	terragrunt run-all plan 

apply-application:
	@echo "Apply for application project";
	terragrunt run-all apply --terragrunt-non-interactive