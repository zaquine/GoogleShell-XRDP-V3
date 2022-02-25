#Script V3
#Auto Create X-RDP On Google Colab
#Firefox Installed
#Chrome Installed
#Created by: Bintang Zaquine

rm -fr google-xrdp-v3.sh
echo "PROGRESS TIME : 5 MINUTES"
echo "Bintang Zaquine"
echo ""
nohup ./ngrok tcp --region ap 3389 &>/dev/null &
echo "-Installing xrdp component"
sudo apt install lxde > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo " Done."
echo "-Installing firefox"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F > /dev/null 2>&1
sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main" > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install firefox -y > /dev/null 2>&1
echo " Done."
echo "-Installing chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt-get install --assume-yes --fix-broken > /dev/null 2>&1
echo " Done."
echo ""
sudo service xrdp start > /dev/null 2>&1
echo "========================"
echo "    YOUR X-RDP INFO"
echo "========================"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Username: bintang"
echo "Password: zaquine"
echo "========================"
sleep 9876543210
