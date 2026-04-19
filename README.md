# 🛠️ Terraform AWS HA Infrastructure (ALB + ASG + Dockerized App)

## 📌 Project Overview

This project demonstrates the design and deployment of a **highly available, scalable AWS infrastructure** using **Terraform (Infrastructure as Code)**.

The architecture provisions a complete production-like environment including:

* Custom VPC with public subnets across multiple Availability Zones
* Application Load Balancer (ALB) for traffic distribution
* Auto Scaling Group (ASG) for high availability and fault tolerance
* Dockerized application deployed on EC2 instances using `user_data`
* Modular Terraform structure for reusability and maintainability

👉 The deployed application (**SmartCalc**) runs inside Docker containers and is accessible via the ALB DNS endpoint.

---

## 🏗️ Architecture

```
User → ALB → Target Group → Auto Scaling Group → EC2 → Docker → App
```

---

## ⚙️ Tech Stack

* **Terraform** → Infrastructure provisioning
* **AWS** → Cloud platform

  * VPC (Networking)
  * EC2 (Compute)
  * ALB (Load Balancer)
  * Auto Scaling Group
* **Docker** → Application containerization
* **Linux (Amazon Linux 2)** → Instance OS

---

## 📁 Project Structure

```
terraform-aws-ha-app/
│
├── modules/
│   ├── vpc/        # Networking (VPC, Subnets, IGW)
│   ├── security/   # Security Groups
│   ├── alb/        # Load Balancer + Target Group
│   ├── compute/    # EC2 + ASG + Launch Template
│
├── env/
│   └── dev/        # Root module
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│
├── user_data.sh    # Docker setup script
└── README.md
```

---

## 🔥 Key Features

* ✅ Modular Terraform architecture (production-style design)
* ✅ Multi-AZ deployment for high availability
* ✅ Auto Scaling for dynamic workload handling
* ✅ Application Load Balancer for traffic distribution
* ✅ Dockerized application deployment via EC2 `user_data`
* ✅ Clean and reusable infrastructure code

---

## 🌐 Output

After deployment, Terraform provides:

* ALB DNS (used to access application)
* VPC ID
* Subnet IDs
* Security Group ID
* Auto Scaling Group name

👉 Open the ALB DNS in browser to access the application.

---

## 🚀 How to Use

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Chaitanyaa1211/terraform-aws-ha-app.git
cd terraform-aws-ha-app/env/dev
```

---

### 2️⃣ Install Terraform

Follow official installation guide:
👉 https://developer.hashicorp.com/terraform/downloads

Verify installation:

```bash
terraform -version
```

---

### 3️⃣ Initialize Terraform

```bash
terraform init
```

👉 Downloads providers and modules

---

### 4️⃣ Validate Configuration

```bash
terraform validate
```

---

### 5️⃣ Plan Infrastructure

```bash
terraform plan
```

👉 Shows what resources will be created

---

### 6️⃣ Deploy Infrastructure

```bash
terraform apply
```

Type:

```bash
yes
```

---

### 7️⃣ Access Application

After deployment:

```bash
terraform output
```

👉 Copy the **ALB DNS** and open in browser:

```
http://<alb-dns>
```

---

### 8️⃣ Destroy Infrastructure (Important 💸)

```bash
terraform destroy
```

👉 Prevent unnecessary AWS charges

---

## 💡 Learnings

* Designing scalable infrastructure using Terraform modules
* Understanding AWS networking (VPC, subnets, routing)
* Implementing load balancing and auto scaling
* Deploying containerized applications in cloud
* Managing infrastructure as code in a clean and reusable way

---

## 📌 Future Improvements

* Add S3 backend for remote state management
* Implement CI/CD using GitHub Actions
* Add HTTPS using ACM + ALB
* Improve monitoring with CloudWatch

---

## 👨‍💻 Author

**Chaitanya Patil**

---

⭐ If you found this project useful, consider giving it a star!
