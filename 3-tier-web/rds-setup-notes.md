# 🛢️ Amazon RDS Setup Notes

## ✅ RDS Configuration
- **Engine**: MySQL
- **Instance class**: db.t2.micro (Free Tier)
- **Storage**: 20 GB General Purpose SSD
- **Multi-AZ**: Disabled
- **Public access**: Disabled (for security)
- **DB name**: yourdb
- **Master username**: admin
- **Password**: yourpassword

## 🔐 Security Group Rules
- Allow **inbound access on port 3306** **from App Tier EC2’s security group only**
- Do not expose RDS to the public

## 🔍 Connectivity Test
- SSH into App Tier EC2
- Run:
```bash
curl http://localhost/dbtest.php
