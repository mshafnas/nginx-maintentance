# 🛠️ Dockerized Nginx Maintenance Page Setup

This project provides a simple and effective way to show a **maintenance page** to users during deployments or planned downtimes. It runs an Nginx server inside a Docker container and conditionally displays a maintenance message based on the existence of a control file.

> 💡 Ideal for developers and DevOps teams who want to gracefully handle downtime and reduce confusion for end-users during deployments.

---

## 🚀 Features

- ✅ Easy to use and deploy with Docker
- 🛠️ Shows a custom HTML maintenance page
- 🔁 Auto-reloads Nginx every 6 hours to pick up any changes (optional)
- 📂 Simple folder-based toggle system to start/stop maintenance mode
- 🔒 Isolated from your main application stack

---

## 🗂️ Project Structure
├── conf/ # Nginx configuration files
│ └── default.conf
├── html/ # Normal website content
│ └── index.html
├── maintenance/ # Maintenance toggle folder
│ └── maintenance.html # The actual maintenance page
├── docker-compose.yml # Docker setup for Nginx
├── startMaintenance.sh # Script to enable maintenance mode
├── stopMaintenance.sh # Script to disable maintenance mode
└── README.md



---

## ⚙️ How It Works

Nginx checks for a file named `maintenance/maintenance.txt`.

- If `maintenance.txt` exists, Nginx redirects all traffic to the `maintenance.html` page.
- If `maintenance.txt` is deleted or missing, Nginx serves the regular site from `html/index.html`.

This is controlled by two helper scripts:

- `startMaintenance.sh` → Enables maintenance mode by creating the toggle file.
- `stopMaintenance.sh` → Disables maintenance mode by removing the toggle file.

---

## 🧪 Usage

### 1. Start the Docker container

```bash
docker-compose up -d

