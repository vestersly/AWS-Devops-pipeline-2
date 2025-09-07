#!/usr/bin/env bash
set -euo pipefail

POD_CIDR="192.168.0.0/16"
sudo kubeadm init --pod-network-cidr=${POD_CIDR} --cri-socket unix:///run/containerd/containerd.sock

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.27.3/manifests/calico.yaml

kubeadm token create --print-join-command | tee /home/ubuntu/join.sh
chmod +x /home/ubuntu/join.sh

echo "Master init done. Join command saved to /home/ubuntu/join.sh"
