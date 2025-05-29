# ☁️ Cloud Lab: API Gateway Integration with Lambda & DynamoDB

📄 [Download Project Report (PDF)](CLOUD LAB ASSIGNMENT 5 & 6.pdf)

This lab enhances a REST API using Lambda integration and DynamoDB for dynamic city temperature data. The API is deployed with proper CORS configurations and tested via Postman and CloudFront.

## 🔧 Tasks Performed

### 1. 🔄 Lambda-Based API Gateway Integration
- Created a Lambda function to return a static temperature (74°F).
- Integrated it with **API Gateway** using Lambda Proxy integration.
- Deployed the API and validated responses in Postman.

### 2. 🌐 Configuration & CORS Setup
- Updated `.config` file with the **invoke URL** from the deployed API stage.
- Enabled **CORS** to allow cross-origin requests.

### 3. 🗃️ DynamoDB Integration
- Created a **DynamoDB** table for storing city temperature data.
- Created `seedDynamo` Lambda function to populate the table from `cities.csv`.
- Updated the original Lambda to fetch temperatures from DynamoDB.

### 4. ✅ Final Testing
- Verified dynamic responses in Postman.
- Confirmed changes reflected through **CloudFront**.
