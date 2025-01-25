# Static Website on AWS with Terraform

This repository contains Terraform configuration files to deploy a static website on AWS.

## Prerequisites

* **AWS Account:** You'll need an active AWS account with appropriate permissions.
* **AWS Credentials:** 
    * **IAM User:** Create an IAM user with programmatic access and the necessary permissions (e.g., EC2InstanceFullAccess, IAMUserPassword). 
    * **AWS Configure:** Configure your AWS credentials using the `aws configure` command:

      ```bash
      aws configure
      ```

* **Terraform:** Install Terraform on your local machine. 
* **SSH Key Pair:** Create an SSH key pair in your AWS account for secure access to the EC2 instance.

## Configuration Files

* **`vars.tf`:** 
    * Stores variables like the AMI ID, region, instance type, and key pair name for better maintainability.

## Deployment Steps

1. **Edit Variables:** Update `variables.tf` with your desired values for:
    * `region` (e.g., "us-east-1")
    * `ami_id` (find the appropriate AMI ID for your chosen operating system)
    * `instance_type` (e.g., "t2.micro")
    * `key_name` (the name of your SSH key pair)

2. **Initialize Terraform:** Run `terraform init` to initialize the working directory and download necessary plugins.

3. **Plan Changes:** Execute `terraform plan` to preview the infrastructure changes that Terraform will make.

4. **Apply Changes:** Run `terraform apply` to create the AWS resources. Review and confirm the changes before proceeding.

5. **Upload Website Content:**
    * Change the url in the web.sh file to your static website zip file

## Accessing Your Website

* **Find Public IP:** Obtain the public IP address of your EC2 instance through output.txt file.

* **Access Website:** Open a web browser and visit `http://<your_instance_public_ip>`.

## Security Considerations

* **Security Groups:** Restrict inbound traffic to your instance as much as possible. Only allow necessary ports (e.g., HTTP/HTTPS) from specific IP addresses or ranges.
* **Key Management:** Store your private key securely and do not share it with others.
* **Regular Updates:** Keep your operating system and web server software updated with the latest security patches.


