# terraform-vmaas-setup

This script will initialze the projects for the VMWare as a Service course. It will currently only work with two projects:
* pso-vmaas-1
* pso-vmaas-2

It creates 4 firewall rules for the vmaas network already created in those projects:
* Allow all internal traffic
* Allow RDP from everywhere
* Allow all traffic from GCVE
* Allow from the simulated on-prem network

## To run:

1. Open Google Cloud Shell and clone this repository.

git clone https://github.com/roitraining/terraform-vmaas-setup

2. Then change to the resulting folder
cd ~/terraform-vmaas-setup

3. Then run: 
terraform init

4. Then run: 
terraform plan

5. Finally, run: 
terraform apply -auto-approve

You will be prompted for the Project ID. Enter either pso-vmaas-1 or pso-vmaas-2 depending on which project your are initiallizing. This script will only work for projects with the vmaas network already created. 


## To delete everything at the end of class, run:
terraform destroy -auto-approve

Again, you will be prompted for the project ID. Enter either pso-vmaas-1 or pso-vmaas-2 depending on which project your are cleaning up after.



