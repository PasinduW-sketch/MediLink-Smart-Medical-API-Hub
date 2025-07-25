# MediLink – Smart Medical API Hub

MediLink is a healthcare integration platform built using **Ballerina** to streamline communication between patients, labs, and pharmacies.

---

## 🧠 Problem
Hospitals, labs, and pharmacies often use different systems, causing delays in accessing patient data and treatment info.

## 💡 Solution
MediLink integrates these services into a unified API hub using **Ballerina**, simplifying data access and improving patient care.

---

## 🚀 Features

- 📋 Patient record retrieval
- 🧪 Lab report synchronization
- 💊 Real-time pharmacy inventory
- 🔐 Secure endpoints using JWT (future enhancement)
- 📈 Built-in observability for debugging

---

## 📁 Project Structure

```bash
medilink-api-hub/
├── ballerina/
│   ├── main.bal
│   ├── services/
│   │   ├── patient_service.bal
│   │   ├── lab_service.bal
│   │   └── pharmacy_service.bal
│   └── utils/
│       └── logger.bal
├── docs/
│   └── architecture-diagram.pdf    
├── README.md
├── LICENSE
└── .gitignore

