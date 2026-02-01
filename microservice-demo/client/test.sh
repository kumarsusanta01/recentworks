#!/bin/bash

SERVER_IP=10.0.2.15
PORT=3000

echo "Calling microservice..."
curl http://$SERVER_IP:$PORT/api/hello