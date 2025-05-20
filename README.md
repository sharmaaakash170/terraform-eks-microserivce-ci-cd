# Automated CI/CD Pipeline with Terraform, GitHub Actions, and AWS EKS 🚀

This project demonstrates a fully automated, production-ready CI/CD pipeline using **Terraform**, **GitHub Actions**, and **AWS EKS** to deploy a containerized microservice application.

## 📌 Tech Stack

- **Terraform**: Infrastructure provisioning (EKS, VPC, S3, IAM, ECR)
- **GitHub Actions**: CI/CD automation
- **AWS EKS**: Kubernetes cluster for workloads
- **Amazon ECR**: Docker image registry
- **Kubernetes**: Deployment and service orchestration

## ⚙️ Workflow Overview

### 1. `infra.yaml` - Infrastructure Provisioning
- Initializes Terraform backend (S3)
- Provisions AWS infrastructure (EKS, VPC, ECR, IAM, etc.)
- Stores Terraform state remotely

### 2. `deploy.yaml` - Application Deployment
- Triggered after infrastructure workflow completes
- Builds and pushes Docker image to ECR
- Updates kubeconfig for the EKS cluster
- Deploys application using `kubectl apply`

## 🗂️ Directory Structure

```
.
├── app/                   # Microservice source code
├── k8s/
│   ├── deployment.yaml    # Kubernetes deployment spec
│   └── service.yaml       # Kubernetes service spec
├── environments/dev/      # Terraform configurations
│   └── main.tf
├── .github/workflows/
│   ├── infra.yaml         # Infrastructure GitHub Actions workflow
│   └── deploy.yaml        # Deployment GitHub Actions workflow
```

## 📈 Outcome

- Reproducible cloud infrastructure via IaC
- Automated Docker image build and deployment
- Scalable and maintainable cloud-native setup

## 💼 Open to Opportunities

I'm actively seeking **DevOps Engineer** roles where I can apply and grow my cloud and automation skills. Feel free to connect or reach out!

---

### 📷 Architecture Diagram

![Architecture Diagram](./diagram.png)