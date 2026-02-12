# Strapi Deployment on EC2 using Terraform and Docker

## Steps

1. **Containerize Strapi App:**  
   Create a Dockerfile in your project directory to containerize the Strapi application.

2. **Build and Push Docker Image:**  
   Build the Docker image and push it to Docker Hub or AWS ECR.

3. **Prepare Terraform Configuration:**  
   Create Terraform files to launch an EC2 instance and define security groups.

4. **Automate Deployment with User Data:**  
   Use Terraform user data to SSH into the EC2 instance, install Docker, pull the Docker image, and run the Strapi container.

5. **Initialize and Apply Terraform:**  
   Run `terraform init`, `terraform plan`, and `terraform apply` to launch the EC2 instance and deploy Strapi automatically.

6. **Access Strapi:**  
   After deployment, access Strapi using the EC2 public IP and the exposed port (default 1337).

