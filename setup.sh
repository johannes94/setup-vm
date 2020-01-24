#install vim 
sudo apt install -y vim

#set vim as default editor
echo "export EDITOR=$(which vim)" >> ~/.profile
echo "export GOPATH=$HOME/go" >> ~/.profile
echo "export PATH=$GOPATH/bin:$PATH" >> ~/.profile
#disable terminal alert sounds
echo "bind 'set bell-style none'" >> ~/.bashrc

#install docker community edition
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update -y
sudo apt install -y docker-ce

# allow docker commands without prefixing with sudo
sudo usermod -aG docker $USER

# install visual studio code
sudo snap install --classic code

# install golang
sudo snap install --classic go

code --install-extension ms-vscode.Go

cp ./settings.json $HOME/.config/Code/User/settings.json


