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

<img width="400" alt="Screenshot 2025-05-02 at 6 38 53 PM" src="https://github.com/user-attachments/assets/6513719d-540d-4eb6-a609-9c3e3ace15f0"/> 
<img width="400" alt="Screenshot 2025-05-02 at 6 41 14 PM" src="https://github.com/user-attachments/assets/46ae9624-3abe-4578-80b2-5140f12594cd" />
<img width="400" alt="Screenshot 2025-05-02 at 6 43 16 PM" src="https://github.com/user-attachments/assets/7360cf5d-5df8-48ef-ab5f-dfac3707a882" />
<img width="400" alt="Screenshot 2025-05-02 at 6 43 51 PM" src="https://github.com/user-attachments/assets/f40ef395-d074-4a8e-a190-a1ef2af91005" />
<img width="400" alt="Screenshot 2025-05-02 at 6 44 28 PM" src="https://github.com/user-attachments/assets/2ae15fce-67a9-4e0d-84a6-1d66e3966158" />
<img width="400" alt="Screenshot 2025-05-02 at 6 45 01 PM" src="https://github.com/user-attachments/assets/91005de3-a078-4be5-8e21-af40c2518074" />
<img width="400" alt="Screenshot 2025-05-02 at 6 46 48 PM" src="https://github.com/user-attachments/assets/30509849-4621-4bda-9fce-6f4bca518bd5" />
<img width="400" alt="Screenshot 2025-05-02 at 6 48 13 PM" src="https://github.com/user-attachments/assets/a9840569-6df0-4261-b444-a21ae0964a5c" />
<img width="400" alt="Screenshot 2025-05-02 at 6 48 39 PM" src="https://github.com/user-attachments/assets/b36e644f-9e59-4bf0-9d47-802dd046535c" />
<img width="400" alt="Screenshot 2025-05-02 at 6 49 05 PM" src="https://github.com/user-attachments/assets/c435949b-97e3-4b9b-a3aa-a452acebd943" />
<img width="400" alt="Screenshot 2025-05-02 at 6 49 25 PM" src="https://github.com/user-attachments/assets/e12557b3-7d10-4c9e-a02c-0dc14d563ea2" />
<img width="400" alt="Screenshot 2025-05-02 at 6 49 39 PM" src="https://github.com/user-attachments/assets/bac6bed8-ddfd-4dc8-b4ac-a29d8307d56a" />
<img width="400" alt="Screenshot 2025-05-02 at 6 50 06 PM" src="https://github.com/user-attachments/assets/acd5820c-a0b1-4d80-afcb-8d743bf7f0e0" />
<img width="400" alt="Screenshot 2025-05-02 at 6 51 03 PM" src="https://github.com/user-attachments/assets/402856bf-37c0-4c24-a573-a42961b090ad" />
<img width="400" alt="Screenshot 2025-05-02 at 6 52 37 PM" src="https://github.com/user-attachments/assets/671c189c-a6a3-4ef4-a06b-52dcc5a583e8" />
<img width="400" alt="Screenshot 2025-05-02 at 6 54 47 PM" src="https://github.com/user-attachments/assets/3525d9b7-9d28-488a-9441-3c615a596404" />
<img width="400" alt="Screenshot 2025-05-02 at 6 54 59 PM" src="https://github.com/user-attachments/assets/4cfcbd5a-e728-484a-8c44-d5339e501faa" />
<img width="400" alt="Screenshot 2025-05-02 at 6 55 07 PM" src="https://github.com/user-attachments/assets/3416bebe-d4d4-4866-9afb-e0de5971bcda" />
<img width="400" alt="Screenshot 2025-05-02 at 7 00 28 PM" src="https://github.com/user-attachments/assets/763b71ad-5f4e-49da-90c7-b015e61b7a04" />
<img width="400" alt="Screenshot 2025-05-02 at 7 01 04 PM" src="https://github.com/user-attachments/assets/9bc84b3a-44d2-4005-a0b6-70269aa5a099" />
<img width="400" alt="Screenshot 2025-05-02 at 7 01 30 PM" src="https://github.com/user-attachments/assets/97632c2b-5d24-429b-a494-83358ad59e3b" />
<img width="400" alt="Screenshot 2025-05-02 at 7 08 42 PM" src="https://github.com/user-attachments/assets/520b2a01-f990-43e0-914f-d5f8ffefab87" />
<img width="400" alt="Screenshot 2025-05-02 at 7 08 58 PM" src="https://github.com/user-attachments/assets/605d333f-2e56-4285-bdfc-f6662c9a7dac" />
