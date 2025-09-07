#!/usr/bin/env bash
set -euo pipefail
echo "👉 Edit this file and paste the kubeadm join command you got from the master:"
echo "   sudo kubeadm join <MASTER-IP>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash> --cri-socket unix:///run/containerd/containerd.sock"
