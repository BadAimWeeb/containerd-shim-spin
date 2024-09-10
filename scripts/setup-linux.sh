#!/bin/bash
sudo apt -y update
sudo apt-get install -y protobuf-compiler libseccomp-dev

echo "setting up rust"
sudo rustup toolchain install --component clippy --component rustfmt --no-self-update stable
sudo rustup target add wasm32-wasi && sudo rustup target add wasm32-unknown-unknown

## setup tinygo. required for building test spin app
echo "setting up tinygo"
wget https://github.com/tinygo-org/tinygo/releases/download/v0.30.0/tinygo_0.30.0_amd64.deb
sudo dpkg -i tinygo_0.30.0_amd64.deb
rm tinygo_0.30.0_amd64.deb
