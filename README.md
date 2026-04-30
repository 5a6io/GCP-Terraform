# 🍀GCP Terraform

This code is refectoring based on 'Side Project'. 

Side Project: https://github.com/5a6io/Side-Project.git

It was written by modules.

## 🗂️Directory Structure

```bash
.
├── modules
│   ├── compute
│   │   └── gke
│   ├── data
│   │   └── sql
│   ├── kubernetes
│   │   ├── autoscaling
│   │   ├── config
│   │   ├── helm
│   │   ├── namespace
│   │   ├── networking
│   │   └── workloads
│   ├── network
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── security
│       ├── iam
│       └── security-group
└── stacks
    ├── 00-providers.tf
    ├── 01-security.tf
    ├── 02-network.tf
    ├── 03-compute.tf
    ├── 04-data.tf
    ├── 05-kubernetes.tf
    └── variables.tf
```
