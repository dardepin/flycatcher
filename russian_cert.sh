#!/bin/bash
echo "Russian root certificate installation tool. Also install newest Google Chrome browser and Libutoken"
if [ "$*" == "" ]; then
    echo "Usage: $0 user1 user2"
    exit 1
fi

sudo apt install libnss3-tools -y
wget http://fias.egisz.rosminzdrav.ru/russian_trust_root_ca.crt
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget http://download.rutoken.ru/Rutoken_Plugin/4.7.0.0/Linux/libnpRutokenPlugin_4.7.0-1_amd64.deb --no-check-certificate
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo dpkg -i llibnpRutokenPlugin_4.7.0-1_amd64.deb 

rm libnpRutokenPlugin_4.7.0-1_amd64.deb 
rm google-chrome-stable_current_amd64.deb

sudo mv russian_trust_root_ca.crt /usr/local/share/ca-certificates/
sudo chmod 755 /usr/local/share/ca-certificates/russian_trust_root_ca.crt
sudo update-ca-certificates

for user in "$@" 
do
    echo "installing certificate to: /home/$user/.pki/nssdb";
    sudo certutil -d sql:/home/$user/.pki/nssdb -A -t TC -n "Russian Trusted Root"  -i /usr/local/share/ca-certificates/russian_trust_root_ca.crt
done

#via miac:
#certfile="/usr/local/share/ca-certificates/russian_trust_root_ca.crt"
#certname="Russian Trusted Root"

#for certDB in $(find ~/ -name "cert9.db")
#do
#    certdir=$(dirname ${certDB});
#    ech "installing to $certdir"
#    certutil -A -n "${certname}" -t "TCu,Cu,Tu" -i ${certfile} -d sql:${certdir}
#done