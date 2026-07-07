# Create your organized subfolder
sudo mkdir -p /usr/local/lib/usbmuxd2

# Move the extracted libraries into place
sudo cp -r ./libs/* /usr/local/lib/usbmuxd2/
echo "/usr/local/lib/usbmuxd2" | sudo tee /etc/ld.so.conf.d/usbmuxd2.conf
sudo ldconfig

# Move the extracted binary into place
sudo cp ./bin/usbmuxd2 /usr/local/sbin/usbmuxd2
sudo cp ./bin/idevice* /usr/local/bin

# Move the scripts into place
sudo mkdir -p /usr/local/libexec
sudo chmod +x ./scripts/*
sudo cp ./scripts/* /usr/local/libexec
