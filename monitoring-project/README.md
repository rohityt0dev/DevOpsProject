# 🚀 Grafana + Prometheus Monitoring Project on AWS EC2

A complete DevOps monitoring project using **Grafana**, **Prometheus**, and **Node Exporter** deployed on an AWS EC2 instance using Docker.

This project demonstrates real-time infrastructure monitoring and visualization of system metrics like CPU, memory, disk usage, and network traffic.

---

# 📌 Project Architecture

```text
User Browser
     │
     ▼
Grafana Dashboard :3000
     │
     ▼
Prometheus :9090
     │
     ▼
Node Exporter :9100
     │
     ▼
EC2 System Metrics
```

---

# 🛠️ Tech Stack

- AWS EC2
- Ubuntu 22.04
- Docker
- Docker Compose
- Prometheus
- Grafana
- Node Exporter
- Linux

---

# 📂 Project Structure

```bash
monitoring-project/
│
├── docker-compose.yml
├── prometheus/
│   └── prometheus.yml
└── README.md
```

---

# ⚙️ EC2 Configuration

| Resource | Configuration |
|---|---|
| Instance Type | t2.micro |
| OS | Ubuntu 22.04 |
| Storage | 20 GB |
| Ports Open | 22, 3000, 9090, 9100 |

---

# 🔐 Security Group Ports

| Port | Purpose |
|---|---|
| 22 | SSH |
| 3000 | Grafana |
| 9090 | Prometheus |
| 9100 | Node Exporter |

---

# 🚀 Installation Steps

## 1️⃣ Update Server

```bash
sudo apt update && sudo apt upgrade -y
```

---

## 2️⃣ Install Docker

```bash
sudo apt install docker.io -y
```

Start Docker:

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

Add user to Docker group:

```bash
sudo usermod -aG docker ubuntu
newgrp docker
```

Check Docker:

```bash
docker --version
```

---

## 3️⃣ Install Docker Compose

```bash
sudo apt install docker-compose-v2 -y
```

Check version:

```bash
docker compose version
```

---

## 4️⃣ Create Project Directory

```bash
mkdir monitoring-project
cd monitoring-project
```

---

## 5️⃣ Create Prometheus Configuration

```bash
mkdir prometheus
vi prometheus/prometheus.yml
```

Paste:

```yaml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets: ["localhost:9090"]

  - job_name: "node_exporter"
    static_configs:
      - targets: ["node-exporter:9100"]
```

---

## 6️⃣ Create Docker Compose File

```bash
nano docker-compose.yml
```

Paste:

```yaml
version: '3'

services:

  prometheus:
    image: prom/prometheus
    container_name: prometheus
    ports:
      - "9090:9090"
    volumes:
      - ./prometheus/prometheus.yml:/etc/prometheus/prometheus.yml
    restart: unless-stopped

  node-exporter:
    image: prom/node-exporter
    container_name: node-exporter
    ports:
      - "9100:9100"
    restart: unless-stopped

  grafana:
    image: grafana/grafana
    container_name: grafana
    ports:
      - "3000:3000"
    restart: unless-stopped
```

---

## 7️⃣ Start Containers

```bash
docker compose up -d
```

Check running containers:

```bash
docker ps
```

---

# 📊 Grafana Setup

Open browser:

```text
http://YOUR_PUBLIC_IP:3000
```

Default Login:

```text
Username: admin
Password: admin
```

---

# 🔗 Add Prometheus Data Source

Go to:

```text
Connections → Data Sources → Add Data Source
```

Select:

```text
Prometheus
```

URL:

```text
http://prometheus:9090
```

Click:

```text
Save & Test
```

---

# 📈 Import Dashboard

Go to:

```text
Dashboards → Import
```

Use Dashboard ID:

```text
1860
```

This imports the popular Node Exporter dashboard.

---

# 📷 Screenshots

## Grafana Dashboard
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/c299e8ac0f56039ac516e5188c550ec11c53e066/monitoring-project/Screenshot%202026-05-12%20134105.png)
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/d0bedaf14f83dd934dcf85b07e24b26c8f18807b/monitoring-project/Screenshot%202026-05-12%20134122.png)
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/d0bedaf14f83dd934dcf85b07e24b26c8f18807b/monitoring-project/Screenshot%202026-05-12%20134507.png)
## Docker Containers
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/c299e8ac0f56039ac516e5188c550ec11c53e066/monitoring-project/Screenshot%202026-05-12%20131259.png)
![alt](https://github.com/rohityt0dev/DevOpsProject/blob/c299e8ac0f56039ac516e5188c550ec11c53e066/monitoring-project/Screenshot%202026-05-12%20131321.png)
---

# ✅ Features

- Real-time monitoring
- CPU monitoring
- Memory monitoring
- Disk monitoring
- Network monitoring
- Dockerized setup
- AWS deployment

---

# 📚 What I Learned

- AWS EC2 setup
- Docker container management
- Prometheus monitoring
- Grafana visualization
- Infrastructure observability
- Linux administration
- DevOps fundamentals

---

# 🔥 Future Improvements

- Add Alertmanager
- Monitor multiple servers
- Add Kubernetes monitoring
- Configure email alerts
- Add Loki for log monitoring

---

# 👨‍💻 Author

Rohit Tambadkar
- Hashnode: https://my-devops-automation-project.hashnode.dev/

---

# ⭐ If you like this project

Give this repository a ⭐ on GitHub!
