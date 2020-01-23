sudo apt install -y vim

#set vim as default editor
echo "export EDITOR=$(which vim)" >> ~/.profile
#disable terminal alert sounds
echo "bind 'set bell-style none'" >> ~/.bashrc
