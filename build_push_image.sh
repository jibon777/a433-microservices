#!/bin/bash

docker build -t item-app:v1 .

docker images

docker tag item-app:v1 jibon/item-app:v1

echo $PASSWORD_DOCKER_HUB | docker login -u jibon --password-stdin

docker push jibon/item-app:v1