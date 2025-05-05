# ☁️ Cloud Lab: CloudFront, S3 Static Hosting, and EC2 Automation

This lab integrates key AWS services — CloudFront, S3, EC2, Lambda, and EventBridge — to achieve secure content delivery and automated instance management using event-driven architecture. The entire implementation was performed via the AWS Management Console.

## 📄 Report

👉 [Download Project Report (PDF)](CloudLab_CloudFront_EC2Automation_RashmikaKashyap.pdf)

## 🔧 Tasks Performed

### 1. ✅ CloudFront Distribution Creation
- Created an Amazon CloudFront distribution.
- Linked it with an S3 bucket configured for static website hosting.
- Enabled secure access to files without exposing the S3 URL directly.

### 2. 📂 Uploading Files to S3 and Managing Permissions
- Uploaded `text.html` and other assets to an Amazon S3 bucket.
- Set up a bucket policy to **deny direct public access**, ensuring content security.

### 3. 🚫 URL Access Restriction Verification
- Attempted to access the S3 object URL directly — received an **Access Denied** error, as expected.
- This confirmed that the policy correctly prevented public access.

### 4. 🌐 Access via CloudFront
- Accessed `text.html` using the CloudFront domain.
- Successfully rendered content, demonstrating that **CloudFront can serve files securely**, even when S3 access is restricted.

### 5. ⚙️ EC2 Automation with Lambda & EventBridge

To automate EC2 instance management without manual intervention:

#### ✅ Step 1: Lambda Functions
- Created two AWS Lambda functions:
  - `StartEC2Instance`: Starts the instance using `start-instances` API.
  - `StopEC2Instance`: Stops the instance using `stop-instances` API.

#### 🕒 Step 2: EventBridge Scheduling
- Used **Amazon EventBridge (CloudWatch Events)** to trigger the Lambda functions at scheduled times:
  - `StopEC2Instance` was scheduled for **8:15 PM**.
  - `StartEC2Instance` was scheduled for **8:20 PM**.
- Ensured both rules targeted their respective Lambda functions using cron expressions.

This implementation highlights **serverless automation** and **event-driven scheduling**, reducing the need for manual EC2 management.

---
👩‍💻 *Author:* Rashmika Kashyap 

