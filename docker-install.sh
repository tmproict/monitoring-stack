{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
sudo apt update\
sudo apt upgrade -y\
\
# Add Docker's official GPG key:\
sudo apt-get update\
sudo apt-get install ca-certificates curl gnupg\
sudo install -m 0755 -d /etc/apt/keyrings\
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg\
sudo chmod a+r /etc/apt/keyrings/docker.gpg\
\
# Add the repository to Apt sources:\
echo \\\
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \\\
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \\\
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null\
sudo apt-get update\
\
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y}