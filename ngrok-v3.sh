rm -fr ngrok ngrok.sh
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
rm -fr ngrok.zip > /dev/null 2>&1
echo "Info: Downloading Ngrok Success..."
