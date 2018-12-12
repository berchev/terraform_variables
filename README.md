# terraform_variables

There are few types of variables in terraform:
- Strings — String syntax. Can also be Boolean’s: `true` or `false` .
- Maps — An associative array or hash-style syntax.
- Lists — An array syntax.

This repo is focused on HOW to use **List Variables** in terraform.


## PreRequirements
- You need to have Terraform tool installed

## Repo content
- `main.tf` - Terraform configuration file

## Instructions on how to install **Terraform**
- Download required package from [here](https://www.terraform.io/downloads.html)
- Change to directory where package is download. For example: `cd $HOME/Downloads/` 
- Type on your terminal: `unzip <Downloaded_TF_Package>`
- Type on your terminal: `sudo mv terraform /usr/local/bin/`
- Check whether Terraform is available with:  `terraform --version` command


## Instructions HOW to prepare your PC environment for this **Terraform project**
- Download the repo **berchev/terraform_variables**: `git clone https://github.com/berchev/terraform_variables.git`
- Change to terraform_variables: `cd terraform_variables`
- Type in your terminal `terraform init` in order to be downloaded required providers
- Type in your terminal `terraform plan` in order to see the changes which terraform is going to be made
- Type in your terminal `terraform apply` execute changes bases on our code(main.tf)

## Expected results
- 5 new `null_resource` named **brands** will be created (count depends on how many defined variables we have)
- `echo` command will be executed on every one of the resources, using different variable specified in the **main.tf** file

Sample output: 
```
null_resource.brands[3]: Creating...
null_resource.brands[4]: Creating...
null_resource.brands[2]: Creating...
null_resource.brands[1]: Creating...
null_resource.brands[0]: Creating...
null_resource.brands[4]: Provisioning with 'local-exec'...
null_resource.brands[3]: Provisioning with 'local-exec'...
null_resource.brands[2]: Provisioning with 'local-exec'...
null_resource.brands[0]: Provisioning with 'local-exec'...
null_resource.brands[3] (local-exec): Executing: ["/bin/sh" "-c" "echo car brand - VW"]
null_resource.brands[1]: Provisioning with 'local-exec'...
null_resource.brands[4] (local-exec): Executing: ["/bin/sh" "-c" "echo car brand - toyota"]
null_resource.brands[1] (local-exec): Executing: ["/bin/sh" "-c" "echo car brand - citroen"]
null_resource.brands[2] (local-exec): Executing: ["/bin/sh" "-c" "echo car brand - skoda"]
null_resource.brands[0] (local-exec): Executing: ["/bin/sh" "-c" "echo car brand - opel"]
null_resource.brands[3] (local-exec): car brand - VW
null_resource.brands[4] (local-exec): car brand - toyota
null_resource.brands[3]: Creation complete after 0s (ID: 7567632833654860997)
null_resource.brands[2] (local-exec): car brand - skoda
null_resource.brands[1] (local-exec): car brand - citroen
null_resource.brands[0] (local-exec): car brand - opel
null_resource.brands[2]: Creation complete after 0s (ID: 5531023636968617152)
null_resource.brands[4]: Creation complete after 0s (ID: 4061437084566964727)
null_resource.brands[1]: Creation complete after 0s (ID: 6820293522194952522)
null_resource.brands[0]: Creation complete after 0s (ID: 3861929202724161973)


```
## Remove all created with Terraform
- Type in your terminal `terraform destroy` in order to delete the created resources **brands**
