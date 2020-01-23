#Setup VirtualBox Dev VM with Ubuntu 18

Update and Upgrade packages and install required packages for virtualbox

```
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y gcc make perl
```

Insert virtualbox guest additions, run it and reboot 
Activate bidirectional drag & drop and clipboard to vm config in virtualbox

Install git and clone this repositor

```
sudo apt install -y git
git clone https://github.com/johannes94/setup-vm.git
```

Generate ssh key for future git usage and add it to your github account:
```
ssh-keygen -t rsa -b 4096
```

Install all development tools including:

- vim
- vscode
- golang
- docker

