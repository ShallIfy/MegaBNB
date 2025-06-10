# 🚀 MegaBNB

<div align="center">

![Docker](https://img.shields.io/badge/Docker-Ready-blue?style=for-the-badge&logo=docker)
![Python](https://img.shields.io/badge/Python-3.8+-green?style=for-the-badge&logo=python)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)
![Maintenance](https://img.shields.io/badge/Maintained-Yes-brightgreen?style=for-the-badge)

**Enterprise-grade automation platform for scalable airdrop claiming workflows**

*Built with Docker • Proxy Rotation • High Concurrency • Bandwidth Monitoring*

[🚀 Quick Start](#-quick-start) • [📖 Documentation](#-documentation) • [🤝 Contributing](#-contributing) • [💬 Support](#-support)

</div>

---

## 📋 Table of Contents

- [✨ Overview](#-overview)
- [🎯 Key Features](#-key-features)
- [🏗️ Architecture](#️-architecture)
- [⚡ Quick Start](#-quick-start)
- [📦 Installation](#-installation)
- [⚙️ Configuration](#️-configuration)
- [🚀 Usage](#-usage)
- [📊 Monitoring](#-monitoring)
- [🔧 Troubleshooting](#-troubleshooting)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)
- [👥 Support](#-support)

---

## ✨ Overview

**MegaBNB** is a production-ready, Docker-containerized automation platform designed for managing large-scale airdrop claiming operations. Built with enterprise-grade reliability and performance in mind, it provides advanced features for power users who need to automate complex workflows across multiple wallets.

### 🎯 Use Cases
- **Airdrop Automation**: Streamline claiming processes across multiple wallets
- **Load Testing**: Test blockchain applications under high concurrency
- **Research & Development**: Analyze network behavior and performance
- **Educational Purposes**: Learn about blockchain automation and Docker deployment

---

## 🎯 Key Features

### 🔄 **Scalability & Performance**
- ⚡ **High-Concurrency Execution** - Handle multiple wallets simultaneously
- 🔄 **Intelligent Retry System** - Up to 100 retry attempts per task with exponential backoff
- 📈 **Performance Monitoring** - Real-time bandwidth and success rate tracking
- 🎯 **Resource Optimization** - Efficient memory and CPU usage patterns

### 🌐 **Network & Security**
- 🔀 **Advanced Proxy Rotation** - Support for HTTP/HTTPS proxy pools
- 🛡️ **Rate Limiting Protection** - Built-in mechanisms to avoid service blocks
- 🔒 **Secure Configuration** - Environment-based sensitive data management
- 📡 **Bandwidth Monitoring** - Detailed upload/download tracking per session

### 🐳 **Deployment & Operations**
- 📦 **Docker-Native** - Zero-dependency deployment with containerization
- 🔧 **Configuration Management** - File-based configuration with hot-reloading
- 📊 **Comprehensive Logging** - Structured logging with multiple output formats
- 🚀 **Production Ready** - Battle-tested in high-load environments

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                        MegaBNB Platform                     │
├─────────────────────────────────────────────────────────────┤
│  🐳 Docker Container                                        │
│  ┌─────────────────┐  ┌─────────────────┐  ┌──────────────┐ │
│  │   Task Manager  │  │  Proxy Manager  │  │   Monitor    │ │
│  │                 │  │                 │  │              │ │
│  │ • Queue System  │  │ • Rotation      │  │ • Bandwidth  │ │
│  │ • Retry Logic   │  │ • Health Check  │  │ • Success    │ │
│  │ • Concurrency   │  │ • Load Balance  │  │ • Logging    │ │
│  └─────────────────┘  └─────────────────┘  └──────────────┘ │
│                                                             │
│  ┌─────────────────────────────────────────────────────────┐ │
│  │                Configuration Layer                      │ │
│  │  📁 config/wallet.txt  📁 config/proxy.txt             │ │
│  └─────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

---

## ⚡ Quick Start

Get MegaBNB running in under 5 minutes:

```bash
# 1. Clone the repository
git clone https://github.com/Shallify/MegaBNB.git
cd MegaBNB

# 2. Configure your wallets
echo "0xYourWalletAddress" > config/wallet.txt

# 3. Build and run
docker build -t megabnb .
docker run --rm -v $(pwd)/config:/app/config megabnb 10
```

---

## 📦 Installation

### 🐧 System Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| **OS** | Ubuntu 18.04+ / CentOS 7+ | Ubuntu 20.04+ |
| **Docker** | 20.10+ | 24.0+ |
| **RAM** | 512MB | 2GB+ |
| **CPU** | 1 Core | 2+ Cores |
| **Storage** | 1GB | 5GB+ |

### 🐳 Docker Installation

#### Ubuntu/Debian
```bash
# Update package index
sudo apt update

# Install Docker
sudo apt install -y docker.io docker-compose

# Start and enable Docker service
sudo systemctl enable docker --now

# Add user to docker group (optional)
sudo usermod -aG docker $USER
```

#### CentOS/RHEL
```bash
# Install Docker
sudo yum install -y docker

# Start and enable Docker service
sudo systemctl enable docker --now
```

#### Verify Installation
```bash
docker --version
docker run hello-world
```

### 📥 Repository Setup

```bash
# Clone with full history
git clone https://github.com/Shallify/MegaBNB.git

# Navigate to project directory
cd MegaBNB

# Verify directory structure
ls -la
```

---

## ⚙️ Configuration

### 📁 Directory Structure

```
MegaBNB/
├── 📁 config/
│   ├── 📄 wallet.txt         # Wallet addresses configuration
│   └── 📄 proxy.txt          # Proxy servers configuration (optional)
├── 🐳 Dockerfile             # Container build instructions
├── 📄 .dockerignore          # Docker build exclusions
├── 📄 .gitignore             # Git tracking exclusions
└── 📖 README.md              # This documentation
```

### 💼 Wallet Configuration

Create or edit `config/wallet.txt` with your wallet addresses:

```bash
# Example wallet.txt
0x742d35Cc6634C0532925a3b8D4C9db96C4b4d1e8
0x8ba1f109551bD432803012645Hac136c5c8b4d1e8
0x9cb2f209551bD432803012645Hac136c5c8b4d1e8
```

**Best Practices:**
- ✅ One wallet address per line
- ✅ Use valid Ethereum addresses (0x format)
- ✅ Remove any trailing spaces or special characters
- ❌ Don't include private keys or sensitive data

### 🌐 Proxy Configuration (Optional)

Configure `config/proxy.txt` for enhanced privacy and rate limiting bypass:

```bash
# Example proxy.txt
http://username:password@proxy1.example.com:8080
http://username:password@proxy2.example.com:8080
socks5://username:password@proxy3.example.com:1080
```

**Proxy Types Supported:**
- 🌐 **HTTP/HTTPS** - Standard web proxies
- 🧅 **SOCKS5** - Enhanced protocol support
- 🔐 **Authenticated** - Username/password authentication
- 🔄 **Rotation** - Automatic proxy switching

**Proxy Best Practices:**
- ✅ Test proxies before adding to configuration
- ✅ Use reputable proxy providers
- ✅ Monitor proxy performance and reliability
- ❌ Avoid free/public proxies for production use

---

## 🚀 Usage

### 🏗️ Building the Container

```bash
# Build with default settings
docker build -t megabnb .

# Build with custom tag
docker build -t megabnb:v1.0 .

# Build with no cache (clean build)
docker build --no-cache -t megabnb .
```

### ▶️ Running Operations

#### Basic Execution (No Proxy)
```bash
docker run --rm \
  -v $(pwd)/config:/app/config \
  -e PYTHONUNBUFFERED=1 \
  megabnb 10
```

#### Advanced Execution (With Proxy)
```bash
docker run --rm \
  -v $(pwd)/config:/app/config \
  -e PYTHONUNBUFFERED=1 \
  megabnb 10 -p
```

#### Production Deployment
```bash
# Run with resource limits
docker run --rm \
  -v $(pwd)/config:/app/config \
  -e PYTHONUNBUFFERED=1 \
  --memory="1g" \
  --cpus="1.0" \
  --name megabnb-prod \
  megabnb 50 -p
```

### 🎛️ Command Line Options

| Parameter | Description | Example |
|-----------|-------------|---------|
| `<number>` | Success attempts per wallet | `10` |
| `-p, --proxy` | Enable proxy rotation | `-p` |
| `--verbose` | Enable detailed logging | `--verbose` |
| `--dry-run` | Test configuration without execution | `--dry-run` |

### 🔧 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `PYTHONUNBUFFERED` | Disable Python output buffering | `1` |
| `LOG_LEVEL` | Logging verbosity | `INFO` |
| `MAX_RETRIES` | Maximum retry attempts | `100` |
| `TIMEOUT` | Request timeout (seconds) | `30` |

---

## 📊 Monitoring

### 📈 Real-time Output

MegaBNB provides comprehensive real-time monitoring:

```bash
[🚀 INIT] MegaBNB v1.0 - Starting automation platform
[📋 CONFIG] Loaded 3 wallets, 5 proxies
[🔄 TASK #1] 0xABC...123 | Attempt 1/10 | Proxy: proxy1.example.com:8080
[📦 RESPONSE] {"success": true, "tx_hash": "0x789...def", "gas_used": 21000}
[✅ SUCCESS] Task #1 completed | TX: 0x789...def | Gas: 21000
[📊 STATS] Success: 1/1 (100%) | Bandwidth: ↓3.21KB ↑0.42KB
```

### 📋 Log Levels

| Level | Description | Use Case |
|-------|-------------|----------|
| `ERROR` | Critical failures only | Production monitoring |
| `WARN` | Warnings and errors | Standard operation |
| `INFO` | General information | Default level |
| `DEBUG` | Detailed execution info | Development/troubleshooting |

### 📊 Performance Metrics

**Per-Session Metrics:**
- 📈 **Success Rate** - Percentage of successful operations
- 📡 **Bandwidth Usage** - Upload/download data transfer
- ⏱️ **Response Times** - Average request/response latency
- 🔄 **Retry Statistics** - Retry attempts and success rates

**System Metrics:**
- 💾 **Memory Usage** - Container memory consumption
- 🖥️ **CPU Utilization** - Processing resource usage
- 🌐 **Network I/O** - Network interface statistics
- 📁 **Disk Usage** - Storage space utilization

---

## 🔧 Troubleshooting

### 🚨 Common Issues

#### Docker Build Failures
```bash
# Issue: Permission denied
sudo chown -R $USER:$USER .
sudo chmod +x scripts/*

# Issue: Network connectivity
docker build --network=host -t megabnb .
```

#### Configuration Problems
```bash
# Issue: Invalid wallet format
# Solution: Verify wallet addresses are valid Ethereum addresses
grep -E "^0x[a-fA-F0-9]{40}$" config/wallet.txt

# Issue: Proxy connection failures
# Solution: Test proxy connectivity
curl --proxy http://proxy:port http://httpbin.org/ip
```

#### Runtime Errors
```bash
# Issue: Container exits immediately
# Solution: Check logs for detailed error information
docker logs <container_id>

# Issue: Permission denied on config files
# Solution: Fix file permissions
chmod 644 config/*.txt
```

### 🔍 Debug Mode

Enable comprehensive debugging:

```bash
# Run with debug logging
docker run --rm \
  -v $(pwd)/config:/app/config \
  -e LOG_LEVEL=DEBUG \
  -e PYTHONUNBUFFERED=1 \
  megabnb 1 --verbose
```

### 📞 Getting Help

1. **Check Logs**: Always review container logs first
2. **Verify Configuration**: Ensure wallet.txt and proxy.txt are properly formatted
3. **Test Connectivity**: Verify network access and proxy functionality
4. **Resource Limits**: Check available memory and CPU resources
5. **Community Support**: Join our [Telegram channel](https://t.me/mfaishal24) for assistance

---

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help improve MegaBNB:

### 🛠️ Development Setup

```bash
# Fork and clone the repository
git clone https://github.com/yourusername/MegaBNB.git
cd MegaBNB

# Create a feature branch
git checkout -b feature/your-feature-name

# Make your changes and test
docker build -t megabnb-dev .

# Submit a pull request
git push origin feature/your-feature-name
```

### 📝 Contribution Guidelines

- ✅ **Code Quality**: Follow PEP 8 style guidelines
- ✅ **Testing**: Include tests for new features
- ✅ **Documentation**: Update README and inline comments
- ✅ **Compatibility**: Ensure Docker compatibility
- ✅ **Security**: Follow security best practices

### 🐛 Bug Reports

When reporting bugs, please include:
- Operating system and version
- Docker version
- Complete error messages
- Steps to reproduce
- Configuration files (sanitized)

### 💡 Feature Requests

We're always looking for ways to improve MegaBNB:
- Performance optimizations
- New proxy protocols
- Enhanced monitoring
- Additional automation features

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2024 Shallify

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

---

## 👥 Support

### 🌟 Maintainer

**Shallify** - *Lead Developer & Maintainer*

### 📱 Connect With Us

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-@Shallify-black?style=for-the-badge&logo=github)](https://github.com/Shallify)
[![Telegram](https://img.shields.io/badge/Telegram-@mfaishal24-blue?style=for-the-badge&logo=telegram)](https://t.me/mfaishal24)
[![Twitter](https://img.shields.io/badge/Twitter-@IAmShall__-1DA1F2?style=for-the-badge&logo=twitter)](https://x.com/IAmShall_)
[![Dev Twitter](https://img.shields.io/badge/Dev_Twitter-@ShallifyLabs-1DA1F2?style=for-the-badge&logo=twitter)](https://x.com/ShallifyLabs)

</div>

### 💬 Community

- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/Shallify/MegaBNB/issues)
- 💡 **Feature Requests**: [GitHub Discussions](https://github.com/Shallify/MegaBNB/discussions)
- 💬 **General Support**: [Telegram Channel](https://t.me/mfaishal24)
- 📧 **Business Inquiries**: Contact via Twitter DM

### ⭐ Show Your Support

If MegaBNB has been helpful for your projects, please consider:
- ⭐ **Starring** this repository
- 🐦 **Following** us on social media
- 🤝 **Contributing** to the project
- 💬 **Sharing** with your network

---

<div align="center">

**Built with ❤️ by the Shallify Team**

*Empowering blockchain automation, one container at a time.*

</div>
