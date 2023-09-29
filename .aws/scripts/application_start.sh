#!/bin/bash

docker pull APP_IMAGE
docker run -itd --restart unless-stopped -p 3000:3000 --name APP_NAME APP_IMAGE

