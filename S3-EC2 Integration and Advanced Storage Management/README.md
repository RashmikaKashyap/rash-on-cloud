# ☁️ 📁 Amazon S3 & EC2 Integration

**Author:** Rashmika Kashyap  
**Technologies Used:** Amazon S3, Amazon EC2, IAM, Transfer Acceleration, CORS, Lifecycle Policies
📄 [Download Project Report (PDF)](./S3-EC2 Integration and Advanced Storage Management.pdf)

---

## 📘 Overview

This assignment focuses on mastering various capabilities of Amazon S3 and EC2 by performing advanced operations such as version control, lifecycle management, multipart uploads, transfer acceleration, static website hosting, and IAM role-based access from EC2 to S3.

---

## 🔧 Key Tasks Performed

### 🗂️ S3 Bucket Management
- **Object Uploading:** Uploaded files to an S3 bucket with both restricted and public access settings.
- **Versioning:** Enabled bucket versioning, uploaded modified versions of a text file, and confirmed version tracking.
- **Lifecycle Policy:** Created a lifecycle policy to automate object transitions or deletions.
- **CORS Configuration:** Enabled CORS to allow cross-origin requests on the S3 bucket.
- **Static Website Hosting:** Hosted a static website directly from the S3 bucket.
- **Transfer Acceleration:** Enabled and tested **S3 Transfer Acceleration**, observing improved upload speeds for large files.
- **Multipart Upload:** Split a video file into multiple parts, uploaded them individually, and created a `parts.json` to track all ETags.

### 🧩 IAM Role & EC2 Integration
- **IAM Role Creation:** Created a role with full S3 access and attached it to an EC2 instance.
- **EC2-S3 Interaction:**
  - Connected to the EC2 instance and uploaded files (e.g., `test.txt`) directly to S3 using AWS CLI.
  - Created directories within EC2 (e.g., `/home/ec2-user/tmp`) and used them for S3 interactions.
  - Successfully performed and verified additional file uploads from EC2 to S3.

---

## 🎯 Skills Demonstrated

- Advanced **Amazon S3** operations (versioning, lifecycle rules, CORS, website hosting)
- **IAM roles and permission management**
- Secure **S3-EC2 integration**
- Use of **Transfer Acceleration** for performance optimization
- Handling **Multipart uploads** for large object storage

---

## ✅ Status

All tasks and configurations were completed successfully and verified using AWS Console and CLI.

---

## 📬 Contact

**Rashmika Kashyap**  
[LinkedIn Profile](#) *(https://www.linkedin.com/in/rashmika-kashyap-5b376025a/)*


