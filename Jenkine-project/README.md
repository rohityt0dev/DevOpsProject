# 🚀 CI/CD Pipeline using Jenkins

## 📌 Project Overview

This project demonstrates a simple Continuous Integration and Continuous Deployment (CI/CD) pipeline using Jenkins.
The pipeline automatically builds, tests, and deploys a static HTML application.

---

## 🛠️ Tech Stack

* Jenkins (CI/CD Tool)
* GitHub (Version Control)
* Linux (Deployment Server)
* Nginx (Web Server)

---

## ⚙️ Pipeline Workflow

```
Code Push → Jenkins Trigger → Build → Test → Deploy → Live Application
```

---

## 📁 Project Structure

```
devops-project/
 └── jenkins-project/
      ├── Jenkinsfile
      ├── app/
      │    └── index.html
      └── README.md
```

---

## 🔧 Jenkins Pipeline Stages

### 1️⃣ Build

* No build required (static HTML project)

### 2️⃣ Test

* Verifies project files exist
* Lists directory contents

### 3️⃣ Deploy

* Copies `index.html` to Nginx web root
* Makes application live

---

## ⚙️ Jenkinsfile

```groovy
pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Build step not required for HTML'
            }
        }

        stage('Test') {
            steps {
                echo 'Checking files...'
                sh 'ls -R'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying HTML app...'
                sh '''
                sudo cp app/index.html /var/www/html/index.html
                '''
            }
        }
    }
}
```

---

## 🌐 Deployment

### Install Nginx

```bash
sudo apt update
sudo apt install nginx -y
```

### Start Nginx

```bash
sudo systemctl start nginx
```
---

## ▶️ How to Run

1. Install Jenkins
2. Connect GitHub repository
3. Configure Pipeline job
4. Set Script Path:

```
jenkins-project/Jenkinsfile
```

5. Click **Build Now**
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/f5f9b4c1787bce948538e7f5a8c7bc85018adf37/Jenkine-project/Screenshot%202026-04-30%20222427.png)
---

## 🌍 Access Application

Open in browser:

```
http://<your-server-ip>
```
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/91505a62dda0905766732ecb339f92de32bd4694/Jenkine-project/Screenshot%202026-04-30%20221912.png)
---

❌ Errors Faced & Fixes

Web Server Not Installed Even if deployment works, without a server:

👉 Browser cannot show your app

Fix:

Install and run Nginx:

```bash
sudo apt update
sudo apt install nginx -y
```

Jenkinsfile Path Issue

👉 deployment silently fails

```sudo visudo```

jenkins ALL=(ALL) NOPASSWD: ALL

```devops-project/jenkins-project/Jenkinsfile```

Jenkins Not Using sudo Properly

## 🎯 Key Learnings

* Implemented CI/CD pipeline using Jenkins
* Integrated Jenkins with GitHub
* Automated deployment on Linux server
* Used Jenkinsfile (Pipeline as Code)

---

## 🚀 Future Improvements

* Add GitHub Webhook (Auto Trigger)
* Dockerize the application
* Deploy on AWS EC2
* Add Monitoring (Prometheus + Grafana)

---

## 👨‍💻 Author

**Rohit Tambadkar**
Aspiring DevOps Engineer 🚀
