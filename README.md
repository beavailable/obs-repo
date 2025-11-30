# obs-repo
This is a user guide for my personal package repository hosted on the OBS (Open Build Service).

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
- [share](https://github.com/beavailable/share)
- [plasma-runner-otp](https://github.com/beavailable/plasma-runner-otp)

## Setup

### 1. Add my GPG key
```bash
curl -fsSL https://download.opensuse.org/repositories/home:/beavailable/Debian_13/Release.key | gpg --dearmor | sudo tee /etc/apt/keyrings/obs-beavailable-keyring.gpg >/dev/null
```

### 2. Add the repository
Create the file `/etc/apt/sources.list.d/obs-beavailable.sources` and paste the following content:
```
Types: deb deb-src
URIs: https://download.opensuse.org/repositories/home:beavailable/REPO
Suites: ./
Signed-By: /etc/apt/keyrings/obs-beavailable-keyring.gpg
```
Replace `REPO` with one of the following names:
- Debian_13
- xUbuntu_24.04
- xUbuntu_24.10
- xUbuntu_25.04

## How To Install Packages?
```bash
sudo apt update
sudo apt install package1 package2 ...
```
