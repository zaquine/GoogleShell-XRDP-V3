#Script V3
#Auto Create X_RDP On Google Colab
#Firefox Installed
#Chrome Installed
#Created by: Bintang Zaquine

rm -fr google-xrdp-v2.sh
echo "PROGRESS TIME : 5 MINUTE"
echo ""
echo "PLEASE USE STABIL CONNECTION"
echo ""
echo ""
nohup ./ngrok tcp --region ap 3389 &>/dev/null &
sudo apt install lxde > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo "======================"
echo "INSTALLING X-RDP DONE"
echo "======================"
echo ""
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F > /dev/null 2>&1
sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main" > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install firefox -y > /dev/null 2>&1
echo "================-======"
echo "INSTALLING FIREFOX DONE"
echo "======================="
echo ""
echo "============================"
echo "WAIT FOR COMPLETING PROGRESS"
echo "============================"
echo ""
sudo service xrdp start > /dev/null 2>&1
echo "======================"
echo "   YOUR X-RDP INFO"
echo "======================"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Username: bintang"
echo "Password: zaquine"
echo "======================"
echo ""
echo ""
echo "NOTE: Don't close this tab to keep your RDP still running..."
sleep 9999999999
