### Basic example
This Terraform example demonstrates how to setup a basic repository using the devops-hive Terraform module.

## Prerequisites
Before using this Terraform configuration, ensure you have the following prerequisites:

- GitHub Token: Obtain a GitHub token with sufficient permissions to create teams, repositories, and configure settings. Set the token and github user/ organization as an environment variables or directly in your Terraform configuration.

```
export GITHUB_TOKEN="<your-github-token>"
```

```
export GITHUB_OWNER="<your-github-username/github-organization-name>"
```

- Terraform Installed: Install Terraform on your local machine. You can download it from the [official website](https://developer.hashicorp.com/terraform/install).


## Running this Example
 Initialize the stack using command below:
```
$ terraform init
```

- Terraform plan to preview the resources that will be deployed
```
$ terraform plan
```

- Terraform apply to deploy the resources
```
$ terraform apply --auto-approve
```

## Resource Cleanup
- Terraform destroy
```
$ terraform destroy --auto-approve
```
