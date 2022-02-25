#Script V3
#Downloading Ngrok

echo "Downloading Ngrok..."
rm -fr ngrok ngrok-v3.sh
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip && rm -fr ngrok.zip > /dev/null 2>&1
echo "  - Done."
