 #!/bin/bash
# A simple script to execute some commands in Termux

# Update package list
sudo apt update && apt upgrade

# Install a package 
 sudo apt install -y docker.io

# Display a message
echo "docker has been installed running setup."

 sudo systemctl enable docker --now

 docker volume create portainer_data

 docker pull portainer/portainer-ce:latest

 docker run -d -p 8000:8000 -p 9443:9443 --name portainer

echo"Successfully installed run localhost:8000."
