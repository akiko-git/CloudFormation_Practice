#!/bin/bash

#Dokerのインストール
sudo yum install -y docker

#Dockerの起動
sudo systemctl start docker.service

#自動起動設定
sudo systemctl enable docker

#Dockerの起動確認
sudo systemctl status docker.service

#dockerコマンドを実行するため、ec2-userをdockerグループに入れる
sudo usermod -a -G docker ec2-user

#Dockerコマンドが実行できるか確認
docker --version

#docker-composeインストール
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

#docker-composeがインストールできたか確認
docker-compose --version


