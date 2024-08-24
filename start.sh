#!/bin/bash

podman build -t tor-proxy ./

podman play kube --replace k8s.yaml
