# ☁️ Cloud Lab: Serverless Image Recognition using AWS Rekognition, Lambda & API Gateway

This lab builds a serverless application that integrates **Amazon Rekognition**, **Lambda**, **S3**, and **API Gateway** to detect a person in uploaded images.

## 🔧 Tasks Performed

- **S3 Bucket Setup:** Created a bucket to upload images for analysis.
- **Lambda Function:** Configured a Lambda function triggered by S3 `PUT` events to call the Rekognition API and detect labels (e.g., people, objects).
- **IAM Role Assignment:** Assigned appropriate permissions for Rekognition, S3 access, and Lambda invocation.
- **CloudWatch Logging:** Validated detection results via Lambda logs.
- **API Gateway (Optional Extension):** Discussed exposing the Rekognition service via an API endpoint for external integration.

This lab applies **AI-powered image analysis** using serverless architecture.

---

📄 [Download Project Report (PDF)](CLOUD_ASSIGNMENT_12.pdf)
