# terraform-gcloud-postgres
Terraform infra to spin up a specific postgres instance in gcloud.
This repository contains Terraform configurations to create a Google Cloud SQL instance with a specified PostgreSQL version.

## Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/terraform-gcloud-postgres.git
   cd terraform-gcloud-postgres

2. Update `terraform.tfvars.json` with your GCP project details and desired instance configuration.

Initialize Terraform:

3. `terraform init`

Review the Terraform plan:

4. `terraform plan`

Apply the Terraform plan to create the resources:

5. `terraform apply`

To destroy the created resources, run:

6. `terraform destroy`
