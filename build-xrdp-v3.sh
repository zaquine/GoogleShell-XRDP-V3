#Script V3
#Auto Create X-RDP On Google Colab
#Firefox Installed
#Chrome Installed
#Created by: Bintang Zaquine

rm -fr google-xrdp-v2.sh
echo "---USE STABIL CONNECTION DURING INSTALATION---"
echo ""
echo "Progress Runing...Please Wait for 5 minute..."
echo ""
nohup ./ngrok tcp --region ap 3389 &>/dev/null &
sudo apt install lxde > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo "[Info]: INSTALLING X-RDP DONE"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F > /dev/null 2>&1
sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main" > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install firefox -y > /dev/null 2>&1
echo "[Info]: INSTALLING FIREFOX SUCCESS"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt-get install --assume-yes --fix-broken > /dev/null 2>&1
echo "Info: INSTALLING CHROME SUCCESS"
echo ""
echo "[Info]: FINISHING PROGRESS......."
echo ""
sudo service xrdp start > /dev/null 2>&1
echo "========================"
echo "    YOUR X-RDP INFO"
echo "========================"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Username: bintang"
echo "Password: zaquine"
echo "========================"
echo ""
echo ""
echo "NOTE:"
echo "- Don't close this tab to keep your X-RDP still running..."
sleep 9999999999
