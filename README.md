# MegaBNB

**MegaBNB** is a Docker-ready automation project designed to manage and scale airdrop claiming workflows. It offers advanced proxy rotation, bandwidth tracking, and high-concurrency execution. Built with flexibility and robustness in mind, it’s tailored for power users automating large wallet batches.

---

## 🔧 Features
- Scalable multi-wallet claiming with success tracking
- Optional rotating proxy support
- Intelligent retry system (up to 100x per task)
- Upload/download bandwidth monitoring
- Clean Docker-based deployment — no Python setup needed

---

## 🗂️ Directory Layout
```
MegaBNB/
├── config/
│   ├── wallet.txt         # Wallet addresses (sample only)
│   └── proxy.txt          # Proxy list (optional, sample only)
├── Dockerfile             # Docker image definition
├── .gitignore             # Exclude files from version control
├── .dockerignore          # Exclude files from Docker build context
├── README.md              # Documentation
```

---

## 🧱 Requirements
- Docker (v20 or later recommended)
- Git (for cloning repository)

---

## 🐧 Install Docker (Ubuntu)
```bash
sudo apt update && sudo apt install -y docker.io
sudo systemctl enable docker --now
```
Check if it's working:
```bash
docker --version
```

---

## 📥 Clone the Repository
```bash
git clone https://github.com/Shallify/MegaBNB.git
cd MegaBNB
```

---

## 🧾 Configure Your Inputs

### `config/wallet.txt`
List your wallet addresses, one per line:
```
0xYourFirstWalletAddress
0xAnotherWallet
```

### `config/proxy.txt`
(Optional) Use HTTP/HTTPS proxies to avoid rate-limiting:
```
http://user:pass@ip:port
```
Leave this file empty or omit `-p` to disable proxy usage.

---

## 🐳 Build the Docker Image
```bash
docker build -t megabnb .
```

---

## 🚀 Run the Tool

Run the container using bind mount to make sure any changes you make to `wallet.txt` or `proxy.txt` after build time are reflected.

### ▶️ Example With Proxy
```bash
docker run --rm \
  -v $(pwd)/config:/app/config \
  -e PYTHONUNBUFFERED=1 \
  megabnb 10 -p
```

### ▶️ Example Without Proxy
```bash
docker run --rm \
  -v $(pwd)/config:/app/config \
  -e PYTHONUNBUFFERED=1 \
  megabnb 10
```

> Replace `10` with how many successful airdrop attempts you want per wallet.

---

## 📈 Bandwidth Tracking
You'll get bandwidth stats per wallet session:
- Total Downloaded (in KB/MB)
- Total Uploaded (in KB/MB)

---

## 🧪 Sample Output
```
[🧪 Task #1] 0xABC... | Attempt 1 | Proxy: http://proxy:1234
[📦 Task #1] Response: {"success": true, "tx_hash": "0xTxHash..."}
[✅ Task #1] Airdrop successful! TX: 0xTxHash...
[📡] Total Downloaded: 3.21 KB (0.00 MB)
[📤] Total Uploaded  : 0.42 KB (0.00 MB)
```

---

## 📌 Disclaimer
This tool is provided as-is. Use at your own risk. For ethical automation and testing purposes only.

---

## 👤 Maintainer
**Shallify**  
- GitHub: [@Shallify](https://github.com/Shallify)  
- Telegram: [@mfaishal24](https://t.me/mfaishal24)  
- Twitter: [@IAmShall_](https://x.com/IAmShall_)  
- Dev Twitter: [@ShallifyLabs](https://x.com/ShallifyLabs)

