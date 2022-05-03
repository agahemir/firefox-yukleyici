set -e
echo -e "\033[1;33mUyarı:\033[0m \033[1;37mYükleme işlemi gerçekleştiriliyor...\033[0m"
wget -O firefoxdl.tar.bz2 --content-disposition 'https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US' || echo -e "\033[1;31mHATA:\033[0m \033[1;37mArşiv dosyaları alınırken sorun oluştu. Lütfen bağlantınızı kontrol edin.\033[0m"
tar -xf firefoxdl.tar.bz2
sudo rm firefoxdl.tar.bz2
sudo mv firefox /opt/firefox
sudo chmod +x /opt/firefox/firefox
echo -e "\033[1;33mUyarı:\033[0m \033[1;37mMasaüstü girdisi oluşturuluyor...\033[0m"
cat > firefox.desktop <<EOF
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/opt/firefox/firefox
Name=Firefox
Comment=Firefox Web Browser
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
EOF

sudo mv firefox.desktop /usr/share/applications
chmod +x /usr/share/applications/firefox.desktop
echo -e "\033[1;33mUyarı:\033[0m \033[1;37mİşlem Tamamlandı...\033[0m"
