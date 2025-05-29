# ☁️ Cloud Lab: Sequential and Conditional Execution using AWS Step Functions

This lab implements AWS Step Functions to manage the execution flow of multiple Lambda functions both sequentially and conditionally, based on input data.

## 🔧 Tasks Performed

### 1. 🔄 Sequential Lambda Execution
- Created `Step2` and `Step3` Lambda functions:
  - `Step2` selects a "place" based on `time` (home, office, or error).
  - `Step3` selects an "activity" based on the place (rest, work, or error).
- Designed a **state machine** to execute Step2 followed by Step3 using JSON definition.

### 2. 🧠 Conditional Execution (Choice State)
- Created a second state machine for processing **ProductTrans** transactions:
  - Routed execution to:
    - `Step4` Lambda if `TransactionType = PRODUCT`
    - `Step5` Lambda if `TransactionType = CUSTOMER`
- Verified dynamic routing and correct output generation.

This lab shows practical usage of **Choice States** and **sequential workflows** in AWS Step Functions.

---

📄 [Download Project Report (PDF)](CLOUD_ASSIGNMENT_8.pdf)
