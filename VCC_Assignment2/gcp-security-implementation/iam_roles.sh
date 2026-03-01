#!/bin/bash
# ===============================================
# IAM ROLE CONFIGURATION SCRIPT
# ===============================================
# This script assigns IAM roles following the
# Principle of Least Privilege.
# Replace PROJECT_ID and USER_EMAIL before running.
# ===============================================

PROJECT_ID="vm-autoscale"
USER_EMAIL="m25ai2102@iitj.ac.in"

# Assign Viewer Role (Read-only access)
gcloud projects add-iam-policy-binding $PROJECT_ID     --member="user:$USER_EMAIL"     --role="roles/viewer"

# Assign Compute Instance Admin Role (Manage VM instances)
gcloud projects add-iam-policy-binding $PROJECT_ID     --member="user:$USER_EMAIL"     --role="roles/compute.instanceAdmin.v1"

# Assign Compute Network Admin Role (Manage firewall & VPC)
gcloud projects add-iam-policy-binding $PROJECT_ID     --member="user:$USER_EMAIL"     --role="roles/compute.networkAdmin"

echo "IAM roles assigned successfully."
