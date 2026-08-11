# backstage-ec2-provisioning

This project provides a Backstage scaffolder template for provisioning an AWS EC2 instance with Terraform.

## Structure

- `backstage-template/template.yaml` — Backstage template definition.
- `terraform/main.tf` — Terraform configuration for the EC2 instance.
- `terraform/variables.tf` — Terraform input variable definitions.
- `terraform/outputs.tf` — Terraform outputs for instance details.

## Backstage usage

1. Add this template to your Backstage catalog if required.
2. Use Backstage scaffolder to create a new project from `backstage-template/template.yaml`.
3. Provide values for:
   - `instanceName`
   - `instanceType`
   - `amiId`
4. Backstage will generate the Terraform files under the target project.

## Terraform usage

1. Change into the generated project directory containing the `terraform` folder.
2. Initialize Terraform:
   ```bash
terraform init
```
3. Review the plan:
   ```bash
terraform plan
```
4. Apply the plan:
   ```bash
terraform apply
```
5. Destroy when finished:
   ```bash
terraform destroy
```

## Notes

- The AWS provider region is currently set in `terraform/main.tf`.
- Supply a valid AMI ID for your target region.
- Ensure AWS credentials are available in your environment.
