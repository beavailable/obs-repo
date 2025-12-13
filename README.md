# obs-repo
This is a user guide for my personal open-source package repository hosted on the OBS (Open Build Service).

## Supported Distributions & Architectures
**Distributions**
- Debian 13
- Ubuntu 24.04
- Ubuntu 24.10
- Ubuntu 25.04

**Architectures**
- amd64
- arm64

## Available Packages
- [china-pac](https://github.com/beavailable/china-pac)
- [plasma-runner-otp](https://github.com/beavailable/plasma-runner-otp)
- [share](https://github.com/beavailable/share)

## Setup
```bash
sudo ./setup.sh
```

## Remove Setup
```bash
sudo rm -f /etc/apt/sources.list.d/obs-beavailable.sources /etc/apt/keyrings/obs-beavailable-keyring.gpg
```

## How To Install Packages?
```bash
sudo apt update
sudo apt install package1 package2 ...
```
