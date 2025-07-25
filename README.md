# MediLink-Smart-Medical-API-Hub
An intelligent healthcare middleware that integrates multiple medical services into one unified, Ballerina-powered API platform.

## 🧩 Key Features
- Real-time patient record sync between hospitals and labs
- API gateway for pharmacy inventory and prescriptions
- Medical appointment scheduling service
- Lab report submission and retrieval
- Secured using Ballerina’s JWT authentication

## 🚀 How We Used Ballerina
- Built microservices for different domains (patients, lab, pharmacy)
- Connected APIs using Ballerina's connectors (HTTP/REST)
- Used Ballerina’s observability for monitoring and debugging
- Enabled CI/CD with GitHub and Ballerina cloud

## 🔧 Setup Instructions

```bash
git clone https://github.com/[your-team]/medilink-api-hub.git
cd medilink-api-hub/ballerina
bal build
bal run

