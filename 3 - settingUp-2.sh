#!/usr/bin/zsh
chsh -s /usr/bin/zsh
source ~/.zshrc

sudo apt-get install libboost-dev -y

sudo apt-get install lyx -y

sudo apt-add-repository ppa:jtaylor/keepass -y
sudo apt-get update -y
sudo apt-get install keepass2 -y

sudo apt-get install vlc -y

#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
#sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#sudo apt-get update  -y
#sudo apt-get install google-chrome-stable -y

sudo apt-get install chromium-browser -y

#Recommended libraries for Nvidia CUDA
sudo apt-get install libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev libx11-dev-y
