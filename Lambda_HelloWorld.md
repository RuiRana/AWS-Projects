# ⚡ AWS Lambda Hello World Function

## 📌 Overview
This project demonstrates how to create and test a simple **serverless function** using AWS Lambda. The function returns a friendly message and logs the execution via CloudWatch — all within the AWS Free Tier.

## 🛠️ Technologies Used
- **AWS Lambda**
- **AWS CloudWatch Logs**
- **Python 3.12 (runtime)**
- **AWS Console**

## ✅ What It Does
- Returns a JSON message: `"Hello from Lambda!"`
- Executes manually via the AWS console
- Logs output to CloudWatch for verification

## 📋 Lambda Function Code
```python
import json

def lambda_handler(event, context):
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
