# Rust Development Container with Code-Server

[![Podman](https://img.shields.io/badge/Podman-4.9.3-892CA0?logo=podman)](https://podman.io/)
[![Rust](https://img.shields.io/badge/Rust-1.72+-DEA584?logo=rust)](https://www.rust-lang.org/)
[![Code-Server](https://img.shields.io/badge/Code--Server-4.16.1-007ACC?logo=visual-studio-code)](https://github.com/coder/code-server)

A containerized Rust development environment with VS Code in the browser, powered by Podman.
This container has some real life problems with Data Structure Solutions


## Features

- 🦀 Full Rust toolchain (stable)
- 💻 Web-based VS Code interface
- 📦 Pre-configured Cargo workspace
- 🔄 Live code reloading
- 🐳 Rootless Podman container
- 🔒 Automatic dependency management

## Prerequisites

- Podman 4.0+ ([Installation Guide](https://podman.io/getting-started/installation))
- podman-compose 1.0+
```bash
sudo apt-get install podman podman-docker podman-compose
podman-compose build
podman-compose up -d
```

## Quick Start

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/rust-dev-container.git
cd rust-dev-container
```

### 2. Build and start the container
```bash
podman-compose up -d --build
```

### 3. Access the development environment
http://localhost:4000

## Development Workflow
```bash
cargo new my_project
cd my_project
cargo run
cargo test
podman exec -it Rust_problems /bin/bash
```
