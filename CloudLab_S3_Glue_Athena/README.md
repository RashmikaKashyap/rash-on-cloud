# ☁️ Cloud Lab: Managing Semi-Structured Data with S3, AWS Glue, and Athena

📄 [Download Project Report (PDF)](CLOUD_LAB_ASSIGNMENT_7.pdf)

This lab demonstrates the use of AWS S3, Glue, and Athena to manage and analyze semi-structured `.csv` data through a serverless query environment.

## 🔧 Tasks Performed

- **Data Ingestion:** Uploaded `.csv` files to an S3 bucket configured as the data source.
- **Glue Crawler Setup:** Created a Glue crawler to automatically infer schema and populate a database/table from the uploaded data.
- **Glue Catalog:** The crawler successfully cataloged the data into a structured database table.
- **Athena Querying:** Used Amazon Athena to run SQL-like ad-hoc queries over the crawled dataset.
- **Output Storage:** Configured Athena to store query results in a separate S3 destination bucket.

This lab showcases how AWS enables serverless ETL and analytics pipelines using native services.


