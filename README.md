# terraform-vmaas-setup

## To run:

Open Google Cloud Shell and clone this repository.

## Then run: 
terraform init

terraform plan

terraform apply -auto-approve

You will be prompted for the Project ID. Enter either pso-vmaas-1 or pso-vmaas-2 depending on which project your are initiallizing.


## To delete everything run:
terraform destroy -auto-approve

Again, you will be prompted for the project ID. Enter either pso-vmaas-1 or pso-vmaas-2 depending on which project your are cleaning up after.



