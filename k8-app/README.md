# 🚀 Kubernetes Setup + App Deployment (Minikube on EC2)

## 📌 Project Overview

This project demonstrates how to deploy a containerized application on Kubernetes using Minikube running on an AWS EC2 instance.

It covers:

* Docker image creation
* Kubernetes Deployment & Service
* Troubleshooting (ImagePullBackOff, networking)
* Image push to Docker Hub

---

## 🏗️ Architecture

User → EC2 → Minikube → Kubernetes Service → Pods → Container

---

## 🧰 Tech Stack

* Docker 🐳
* Kubernetes ☸️
* Minikube
* AWS EC2
* Linux

---

## 📂 Project Structure

```
k8-project/
├── Dockerfile
├── index.html
├── deployment.yaml
├── service.yaml
└── README.md
```

---

## ⚙️ Step-by-Step Setup

### 1️⃣ Clone Repo

```
git clone https://github.com/rohit0dev/DevOpsProject
cd k8-app
```

---

### 2️⃣ Build Docker Image

```
docker build -t my-app .
```

---

### 3️⃣ Tag & Push to Docker Hub

```
docker tag my-app rohityt0dev/my-app:latest
docker login
docker push rohityt0dev/my-app:latest
```

---



### 4️⃣ Start Minikube

```
minikube start
kubectl get nodes
```

---

### 5️⃣ Deploy to Kubernetes

```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

---

### 6️⃣ Verify Pods

```
kubectl get pods
```

Expected:

```
Running
```

---

## 🌐 Access Application

## 🛠️ Troubleshooting

### ❌ ImagePullBackOff

**Cause:** Image not found in registry
**Fix:**

* Tag image correctly
* Push to Docker Hub
* Update deployment.yml

---

### ❌ NodePort Not Accessible

**Cause:** Minikube network isolation
**Fix:** Use port-forward or configure networking properly

---




---

## 🔄 Scaling Application

```
kubectl scale deployment my-app --replicas=4
```

---

## 🔁 Rolling Update

```
kubectl rollout restart deployment my-app
```

---

## 🧠 Key Learnings

* Kubernetes Deployment & Service concepts
* Docker image lifecycle (build → tag → push)
* Debugging real-world DevOps issues
* Networking challenges in Minikube on EC2

---

## 📸 Screenshots
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/607fbc030579161f73fbdb528388f542b3e92104/k8-app/Screenshot%202026-04-30%20091426.png)
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/607fbc030579161f73fbdb528388f542b3e92104/k8-app/Screenshot%202026-04-30%20091819.png)
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/607fbc030579161f73fbdb528388f542b3e92104/k8-app/Screenshot%202026-04-30%20091857.png)


---

## ⭐ Resume Description

Deployed a containerized application on Kubernetes using Minikube on AWS EC2. Implemented Deployments, Services, scaling, and troubleshooting techniques such as resolving ImagePullBackOff and networking issues.

---

## 🚀 Future Improvements

* Deploy on AWS EKS
* Add Ingress Controller
* Implement CI/CD (GitHub Actions)
* NodePort may not work with Minikube on EC2 due to network isolation. In that case, we use kubectl port-forward or move to EKS for production-grade exposure.
---

