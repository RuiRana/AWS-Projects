# 📦 AWS CloudFormation: S3 Bucket Deployment

## 📌 Overview
This project demonstrates how to use AWS CloudFormation to deploy infrastructure as code (IaC). The template provisions a secure, private S3 bucket using a YAML-based CloudFormation script.

## 🧰 Tools Used
- AWS CloudFormation (via Console)
- YAML template
- Amazon S3

## 🔧 What It Does
Creates an S3 bucket named: ruhail-cloudformation-demo

The bucket is private and provisioned entirely using a CloudFormation stack — no manual clicking in the S3 Console.

## 📄 Template File
See [`s3-bucket-template.yaml`](./s3-bucket-template.yaml)

c
AWSTemplateFormatVersion: '2010-09-09'
Description: Create an S3 bucket using CloudFormation

Resources:
  RuhailS3Bucket:
    Type: 'AWS::S3::Bucket'
    Properties:
      BucketName: ruhail-cloudformation-demo
      AccessControl: Private

## 🚀 How I Deployed It
1. Opened AWS CloudFormation Console → Create Stack
2. Uploaded the `s3-bucket-template.yaml` file
3. Named the stack (e.g., `CreateS3Stack`)
4. Clicked through and launched the stack
5. Confirmed stack status as `CREATE_COMPLETE` and verified the S3 bucket

## ✅ Outcome
- Verified `ruhail-cloudformation-demo` exists in the S3 Console
- Confirmed it was created from a CloudFormation template
- Demonstrated practical use of IaC on AWS

## 💡 Learning Outcomes
- Learned the structure of a CloudFormation YAML file
- Practiced launching infrastructure as code
- Verified resource creation and stack success
