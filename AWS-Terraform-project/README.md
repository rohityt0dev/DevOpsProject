# 🚀 AWS Infrastructure Automation using Terraform

![Terraform](https://img.shields.io/badge/IaC-Terraform-blue)
![AWS](https://img.shields.io/badge/Cloud-AWS-orange)
![Status](https://img.shields.io/badge/Project-Complete-brightgreen)

---

## 📌 Project Overview

This project demonstrates how to provision complete AWS infrastructure using **Infrastructure as Code (IaC)** with Terraform.

The setup includes a custom VPC, networking components, and an EC2 instance running a web server — fully automated using code.

---

## 🧠 Architecture

User → Internet Gateway → VPC → Public Subnet → EC2 Instance

---

## 🏗️ Infrastructure Components

* VPC (Custom CIDR)
* Public Subnet
* Internet Gateway
* Route Table + Association
* Security Group (HTTP + SSH)
* EC2 Instance (Amazon Linux)
* Web Server (Apache)

---

## ⚙️ Tech Stack

* Terraform
* AWS (EC2, VPC)
* Linux (Amazon Linux 2)
* Apache Web Server

---

## 📁 Project Structure

```
aws-terraform-project/
│
├── provider.tf
├── .gitignore
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md

```

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```
git clone https://github.com/your-username/aws-terraform-project.git
cd aws-terraform-project
```

---

### 2️⃣ Initialize Terraform

```
terraform init
```

---

### 3️⃣ Preview Changes

```
terraform plan
```

---

### 4️⃣ Deploy Infrastructure

```
terraform apply
```

Type `yes` when prompted.

---

## 🌐 Access the Application

After deployment, Terraform will output the public IP.

Open in browser:

```
http://<your-ec2-public-ip>
```

You should see:

```
Hello from Terraform
```
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/787fccb02179d04419fede60d3b1e5924c98e883/AWS-Terraform-project/Screenshot%202026-04-29%20012915.png)
---

## 🔐 Variables Configuration

You can customize values in:

```
terraform.tfvars
```

Example:

```
region         = "ap-south-1"
instance_type  = "t2.micro"
key_name       = "your-key-name"
```

---

## 📤 Outputs

* EC2 Public IP
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/502eb3f95feacebbfc6417a1e4432248a5f76566/AWS-Terraform-project/Screenshot%202026-04-29%20012640.png)
---

## 🧹 Destroy Resources

To avoid AWS charges:

```
terraform destroy
```

---

## 💼 Resume Value

✔️ Built AWS infrastructure using Terraform
✔️ Automated VPC, networking, and EC2 provisioning
✔️ Deployed a web server using user data scripts

---

## 🔥 Future Improvements

* Add S3 Remote Backend
* Use Terraform Modules
* Integrate CI/CD (GitHub Actions)
* Add Load Balancer (ALB)
* Multi-environment setup (dev/stage/prod)

---

## 👨‍💻 Author

**Your Name**
Aspiring DevOps Engineer

---

## ⭐ Support

If you found this project helpful, give it a ⭐ on GitHub!
