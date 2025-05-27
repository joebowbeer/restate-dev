#!/bin/bash

echo "[START] Install dev tools"

sudo apt update

sudo apt install -y nano curl zip unzip git zsh bat httpie

npm install --global @restatedev/restate@latest

kind delete cluster --name restate-dev
kind create cluster --name restate-dev

# helm repo add headlamp https://kubernetes-sigs.github.io/headlamp/
# helm upgrade --install headlamp headlamp/headlamp --namespace kube-system

helm upgrade --install restate-operator oci://ghcr.io/restatedev/restate-operator-helm:1.6.0-alpha1 --namespace restate-operator --create-namespace --set version=pr20

echo "[END] Install dev tools"
