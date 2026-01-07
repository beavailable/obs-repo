# obs-repo
This is a user guide for my personal open-source package repository hosted on the OBS (Open Build Service).

## Supported Distributions & Architectures
**Distributions**
- Debian 13
- Ubuntu 24.04
- Ubuntu 24.10
- Ubuntu 25.04
- Ubuntu 25.10

**Architectures**
- amd64
- arm64

## Available Packages
- [china-pac](https://github.com/beavailable/china-pac)
- [deno](https://github.com/beavailable/deno)
- [geph5-client](https://github.com/beavailable/geph5-client)
- [plasma-runner-otp](https://github.com/beavailable/plasma-runner-otp)
- [share](https://github.com/beavailable/share)

## Setup

### Method 1

#### 1. Add my GPG key
```bash
curl -fsSL https://download.opensuse.org/repositories/home:/beavailable/Debian_13/Release.key | sudo gpg --dearmor --yes -o /etc/apt/keyrings/obs-beavailable-keyring.gpg
```

#### 2. Add the repository
Create the file `/etc/apt/sources.list.d/obs-beavailable.sources` and paste the following content:
```
Types: deb
URIs: https://download.opensuse.org/repositories/home:beavailable/REPO
Suites: ./
Signed-By: /etc/apt/keyrings/obs-beavailable-keyring.gpg
```
Replace `REPO` with one of the following names:
- Debian_13
- xUbuntu_24.04
- xUbuntu_24.10
- xUbuntu_25.04
- xUbuntu_25.10

### Method 2
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
