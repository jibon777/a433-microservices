#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 jibon/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u jibon --password-stdin

# Mengunggah image ke Docker Hub
docker push jibon/item-app:v1