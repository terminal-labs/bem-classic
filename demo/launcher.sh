apt update
apt install build-essential -y
apt install linux-headers-$(uname -r) -y
apt install make -y
apt install unzip -y
wget https://github.com/terminal-labs/bem-classic/archive/refs/heads/main.zip
unzip main.zip
chmod -R 7777 bem-classic-main
cd bem-classic-main/demo
make psf
