#Script V3
#Auto Re-Active X_RDP On Google Colab
#Created by: Bintang Zaquine
echo "Running..........."
nohup ./Running...........ngrok tcp --region ap 3389 &>/dev/null &
sudo apt install lxde > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp stop > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
sudo clear
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
