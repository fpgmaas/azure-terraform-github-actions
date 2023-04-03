# azure-terraform-github-actions

This repository serves as an example/template for deploying Azure infrastructure using Terraform, based on the steps outlined in [this](https://www.fpgmaas.com/blog/azure-terraform-github-actions) blog post.

The project has the following features:

- Use a Service Principal to authenticate to Azure services.
- Deploy a remote state bucket for Terraform on Azure using the  `Deploy Terraform State Bucket` workflow.
- Deploy Terraform infrastructure on Azure upon creation of a new Release on GitHub.

The repository requires the following secrets to be set:

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_TENANT_ID`
- `ARM_SUBSCRIPTION_ID`

More information on how to create these secrets can be found in the related blog post.