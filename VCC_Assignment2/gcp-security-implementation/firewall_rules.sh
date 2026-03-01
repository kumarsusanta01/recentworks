#!/bin/bash
# ===============================================
# FIREWALL CONFIGURATION SCRIPT
# ===============================================
# This script creates firewall rules to allow
# HTTP/HTTPS traffic and restrict SSH access.
# ===============================================

NETWORK="default"

# Allow HTTP (Port 80)
gcloud compute firewall-rules create allow-http     --network=$NETWORK     --direction=INGRESS     --action=ALLOW     --rules=tcp:80     --source-ranges=49.204.110.15/32    --target-tags=web-server

# Allow HTTPS (Port 443)
gcloud compute firewall-rules create allow-https     --network=$NETWORK     --direction=INGRESS     --action=ALLOW     --rules=tcp:443     --source-ranges=49.204.110.15/32     --target-tags=web-server

# Restrict SSH 
gcloud compute firewall-rules create allow-ssh-restricted     --network=$NETWORK     --direction=INGRESS     --action=ALLOW     --rules=tcp:22     --source-ranges=49.204.110.15/32    --target-tags=web-server

echo "Firewall rules created successfully."
