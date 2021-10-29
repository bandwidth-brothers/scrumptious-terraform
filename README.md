# scrumptious-terraform

This is a simple terraform file to create a vpc with four subnets across two availability zones, one public and one private in each. The required variables are as follows:
- access-key: This is the access key for your AWS account.
- secret-key: This is the associated secret key for the access key.
- region: This is the desired region to deploy the resources.
- aws-id: This is the ID of the AWS account.

In order to use the provided Jenkinsfile, the following plugins are necessary:
- terraform: This is the plugin that integrates Terraform into Jenkins.

This Jenkinsfile assumes that the Terraform installation is named terraform, this can be changed if necessary.
