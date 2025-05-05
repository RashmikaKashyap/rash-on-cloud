# ☁️ Cloud Lab: Mock REST API Integration and CloudFront-S3 Dynamic Update

This lab demonstrates the creation and testing of a mock REST API using Amazon API Gateway, integrating it with a front-end static site hosted on Amazon S3 and distributed via CloudFront. The lab also includes testing using Postman and validating content delivery after a configuration change.

---
## 📄 Report

👉 [Download Project Report (PDF)](CloudLab_MockAPI_S3Integration_RashmikaKashyap.pdf)

## 🔧 Tasks Performed

### 1. 🔄 Creating a Mock REST API with POST Method
- Set up a mock **REST API** using **Amazon API Gateway**.
- Implemented the **POST** method to simulate backend behavior without actual server-side logic.

### 2. 🔌 Integration Request Setup
- Configured **Integration Request** within API Gateway to define how client requests are processed.
- Used mocking templates to simulate expected request handling behavior.

### 3. 🔁 Editing Integration Response
- Customized the **Integration Response** to control the API's output format.
- Enabled structured and predictable mock responses for testing purposes.

### 4. 🧪 Testing the API via Postman
- Used **Postman** to test the mock POST API.
- Verified that the simulated API returns expected responses for valid requests.

### 5. 📂 Editing Front-End Config and S3 Upload
- Modified `config.js` in the local project to point to the new mock API endpoint.
- Re-uploaded the updated `config.js` file to the **Amazon S3 bucket** hosting the static website.

### 6. 🌐 CloudFront Distribution Update
- Refreshed the **CloudFront distribution** to reflect the updated configuration.
- Verified that the changes were live and accessible via the CloudFront domain.

---

👩‍💻 *Author:* Rashmika Kashyap  
