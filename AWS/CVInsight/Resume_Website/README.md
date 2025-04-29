# 🧠 CVInsight – Resume Analyzer with AWS Cloud, Terraform & NLP

CVInsight is a cloud-native cloud based resume analysis website that extracts, ranks, and matches skills and qualifications from resumes against job descriptions.  
It uses TF-IDF for relevancy scoring and is built using AWS and modern NLP tools.

## 🚀 Features
- Resume parsing and keyword extraction
- Relevancy scoring using TF-IDF

---

## 🌐 Frontend Tech Stack

- **HTML & CSS** – For page layout and styling
- **JavaScript** – For handling user interactions and API communication
- **Hosted AWS Cognito UI** – For secure login and signup flows
- **Browser Fetch API** – To call API Gateway endpoints and handle uploads

### 🖥️ Frontend Features

- **Login/Signup interface** powered by AWS Cognito Hosted UI
- **Resume upload UI** using file input and upload button
- **JavaScript logic** to:
  - Switch between login/signup tabs
  - Submit authentication forms
  - Call API to fetch pre-signed S3 URLs
  - Upload resumes directly to S3 using those URLs

---

## ☁️ Backend / Cloud Stack

- **Amazon API Gateway** – Exposes the RESTful endpoint `/get-presigned-url`
- **AWS Lambda** – Generates secure, time-limited pre-signed URLs for uploading files to S3
- **Amazon S3** – Stores the uploaded resume files
- **Amazon Cognito** – Handles user authentication (login, signup, logout)
- **IAM Roles** – Manage permissions between Lambda, S3, and Cognito

### 🔐 Why Pre-Signed URLs?

Pre-signed URLs allow users to upload files **directly to S3** from the browser without exposing any AWS credentials. It ensures:
- Secure, temporary access
- Efficient and scalable file handling
- Reduced backend complexity and server load

---

## 🛠️ Infrastructure as Code (Terraform)
### Terraform is used to automate the provisioning of the frontend hosting architecture on AWS.

##✅ What’s Provisioned:
-**Amazon S3 Bucket**
-**Stores files like index.html, homepage.html, styles.css, script.js, and images**
-**Amazon CloudFront Distribution**
-**Delivers the S3-hosted content globally using AWS’s CDN**
-**Configured with Origin Access Control (OAC) to securely serve files from S3**
-**Uses HTTPS and a default viewer certificate**
-**S3 Bucket Policy**
-**Grants CloudFront secure read-only access to the S3 bucket contents**
-**The CloudFront domain name is output at the end of deployment for quick access**

##📁 Frontend Files Automatically Uploaded
The following files are automatically uploaded to S3 and mapped with appropriate content types using a for_each block:

-index.html
-homepage.html
-logged_out.html
-styles.css
-script.js
-background.png

🌍 Access
Once deployed, the website is available at the generated CloudFront domain, which can be found in Terraform’s output.

## 👩‍💻 Author
Rashmika K.
