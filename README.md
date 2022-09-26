# F5-XC-V8KS-STATUS-CHECK
This repository consists of Terraform templates to check status of F5XC Virtual Kubernetes object.

## Usage

- Clone this repo with: `git clone --recurse-submodules https://github.com/cklewar/f5-xc-vk8s-status-check`
- Enter repository directory with: `cd f5-xc-vk8s-status-check`
- Obtain F5XC API certificate file from Console and save it to `cert` directory
- Pick and choose from below examples and add mandatory input data and copy data into file `main.tf.example`.
- Rename file __main.tf.example__ to __main.tf__ with: `rename main.tf.example main.tf`
- Initialize with: `terraform init`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`

## vK8s status check module usage example

````hcl
module "vk8s_wait_for_online" {
  depends_on = [module.vk8s]
  source         = "./modules/f5xc/status/vk8s"
  f5xc_api_token = var.f5xc_api_token
  f5xc_api_url   = var.f5xc_api_url
  f5xc_namespace = var.f5xc_virtual_k8s_namespace
  f5xc_tenant    = var.f5xc_tenant
  f5xc_vk8s_name = format("%s-vk8s-%s", var.project_prefix, var.project_suffix)
}
````