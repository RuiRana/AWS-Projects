# ☁️ AWS 3-Tier Web Application Deployment

## 📌 Overview
This project demonstrates how to deploy a **3-tier web application architecture** using the AWS Free Tier. It includes a web tier (EC2), an application tier (EC2), and a backend database tier (RDS), following best practices in VPC segmentation and access control.

---

## 🧰 Services Used
- Amazon EC2 (Web & App servers)
- Amazon RDS (MySQL)
- Amazon VPC (public/private subnets)
- IAM (Key pairs, roles)
- Security Groups
- Auto Scaling Group (optional)
- CloudWatch (optional)

---

## 🔧 What It Does
- Launches an EC2 instance with a web server in a **public subnet**
- Launches a second EC2 instance in a public/private subnet for the **application logic**
- Connects to a **MySQL RDS database** in a **private subnet**
- All infrastructure configured to fit **within AWS Free Tier**

---

## 🚀 Deployment Summary

1. Create VPC with public/private subnets
2. Launch EC2 instance (Web Tier) with Apache
3. Launch EC2 (App Tier) with DB connection logic
4. Launch RDS MySQL (t2.micro, private subnet)
5. Secure access using IAM roles and Security Groups
6. (Optional) Add Auto Scaling Group to App Tier

---

## ✅ Outcome
- Fully functional 3-tier architecture
- All deployed from scratch via AWS Console
- Verified secure tier-to-tier connectivity
- Minimal or zero cost using Free Tier resources

---

## 💡 Learning Outcomes
- Practiced secure VPC design (public vs private)
- Launched scalable compute and DB resources
- Connected EC2 to RDS via internal networking
- Improved skills in permissions, monitoring, and IaC planning

---

## 📂 Files
- `web-tier-userdata.sh`: Web server config
- `app-tier-userdata.sh`: App logic config
- `rds-setup-notes.md`: Setup and test DB connection
- *(Optional)* CloudFormation template and architecture diagram

This architecture diagram illustrates a classic 3-tier web application on AWS. It includes a public-facing Web Tier (EC2), an Application Tier (EC2), and a Database Tier (RDS) hosted in a private subnet. The design follows best practices for network isolation, security group configuration, and resource segmentation across subnets within a VPC.







