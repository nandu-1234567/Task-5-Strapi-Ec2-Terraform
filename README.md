<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Strapi Deployment on EC2 with Terraform & Docker</title>
</head>
<body>
    <h1>Deploy Strapi on EC2 using Terraform and Docker</h1>

    <h2>Steps</h2>
    <ol>
        <li><strong>Containerize Strapi App:</strong> Create a Dockerfile in your project directory to containerize the Strapi application.</li>
        <li><strong>Build and Push Docker Image:</strong> Build the Docker image and push it to Docker Hub or AWS ECR.</li>
        <li><strong>Prepare Terraform Configuration:</strong> Create Terraform files to launch an EC2 instance and define security groups.</li>
        <li><strong>Automate Deployment with User Data:</strong> Use Terraform user data to SSH into the EC2 instance, install Docker, pull the Docker image, and run the Strapi container.</li>
        <li><strong>Initialize and Apply Terraform:</strong> Run Terraform init, plan, and apply to launch the EC2 instance and deploy Strapi automatically.</li>
        <li><strong>Access Strapi:</strong> After deployment, access Strapi using the EC2 public IP and the exposed port.</li>
    </ol>

    <h2>Notes</h2>
    <ul>
        <li>All deployment steps are automated via Terraform using user data scripts.</li>
        <li>Ensure your security group allows SSH access and the Strapi port (default 1337).</li>
        <li>Use environment variables or a .env file for Strapi configuration.</li>
        <li>Do not commit Docker images or the Terraform cache directory to Git.</li>
    </ul>
</body>
</html>
