#!/bin/bash

aws ecr get-login-password --region AWS_REGION | docker login --username AWS --password-stdin ECR_REGISTRY
docker pull APP_IMAGE
docker run -itd --restart unless-stopped -p 3000:3000 --name APP_NAME APP_IMAGE

