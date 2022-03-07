uthor: Paul Valery Simo
#Date: 03/04/2022
#Email: valerydolce@gmail.com
#-------------------------------------Install Docker and check its status----------------------------
# Step 1 - Clean up the system
echo -e "\nWe're about to cleanup the system...\n"
sleep 2
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-enginec   
yum clean all
rm -rf /var/cache/yum/*
echo -e "\nCleanup has been Completed!\n"

# Step 2 - Update the Package Database
echo -e "Installing the Package Database"
sudo yum check-update
echo -e "\nPackage Database has been installed!\n"
sleep 3

#Step 3 - Add the official Docker repository, download the latest version of Docker, and install it.
curl -fsSL https://get.docker.com/ | sh
echo -e "\nCongratulations, docker has been installed on this machine!\n"
sleep 3

# Step 4 - Start Docker Daemon
sudo systemctl start docker
echo -e "\nDocker Daemon has been started!\n"
sleep 3

# Step 5 - Check if Docker is running
echo "-e \nChecking if Docker is running on this machine\n"
sudo systemctl status docker

# Step 6 - Make sure Docker starts at every server reboot
sudo systemctl enable docker
echo -e "\nDocker installation has been completed!\n"


