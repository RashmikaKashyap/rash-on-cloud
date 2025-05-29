# ☁️ Cloud Lab: Real-Time Clickstream Processing using AWS Kinesis and Lambda

This lab demonstrates a real-time data pipeline using AWS Kinesis for streaming clickstream data, Lambda for transformation, and S3 for persistent storage.

## 🔧 Tasks Performed

### 1. 🟢 Lambda Producer
- Generated synthetic clickstream data including user IDs, device types, and events.
- Sent data to a Kinesis Data Stream using `put_record()` API.

### 2. 🔄 Kinesis Data Stream
- Created a Kinesis stream (`mykinesisdatastream`) with defined shard capacity.
- Used the stream as a buffer for real-time data ingestion.

### 3. 🧠 Lambda Consumer
- Created a Lambda function triggered by Kinesis.
- Decoded and parsed the stream data (base64 JSON).
- Stored processed records into S3 as `.json` files using session ID and timestamp as keys.

### 4. 🗂️ S3 Integration
- Set up `mykinesisbucket` to receive records from Lambda consumer.
- Ensured correct IAM permissions for write access.

This experiment simulates a **real-world serverless stream analytics** use case.

---

📄 [Download Project Report (PDF)](CLOUD_ASSIGNMENT_10.pdf)
