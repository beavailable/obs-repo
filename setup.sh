#!/usr/bin/bash
set -euo pipefail
shopt -s inherit_errexit

if [[ $EUID -ne 0 ]]; then
    echo 'Please run the script with root permission' >&2
    exit 1
fi

SUPPORTED_DISTROS=' Debian_13 xUbuntu_24.04 xUbuntu_24.10 xUbuntu_25.04 '

name=$(sed -nE 's/^ID=(\S+)$/\1/p' /etc/os-release)
version=$(sed -nE 's/^VERSION_ID="(\S+)"$/\1/p' /etc/os-release)

if [[ -z "$name" || -z "$version" ]]; then
    echo 'Unknown distro' >&2
    exit 1
fi

name="${name@u}"
if [[ "$name" == 'Ubuntu' ]]; then
    name="x$name"
fi
name="${name}_$version"

if [[ "$SUPPORTED_DISTROS" != *\ $name\ * ]]; then
    echo 'Unsupported distro' >&2
    exit 1
fi

curl -fsSL --connect-timeout 10 "https://download.opensuse.org/repositories/home:/beavailable/$name/Release.key" | gpg --yes -o /etc/apt/keyrings/obs-beavailable-keyring.gpg --dearmor

{
    echo 'Types: deb'
    echo "URIs: https://download.opensuse.org/repositories/home:beavailable/$name"
    echo 'Suites: ./'
    echo 'Signed-By: /etc/apt/keyrings/obs-beavailable-keyring.gpg'
} >/etc/apt/sources.list.d/obs-beavailable.sources

echo 'Finished'
