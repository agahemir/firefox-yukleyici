set -e

sudo rm -r /opt/firefox || echo -e "\033[1;31mHATA:\033[0m \033[1;37mFirefox'un dosyaları kaldırılırken bir sorun oluştu. Dizine erişiminiz olduğundan ve dosyaların bulunduğundan emin olun.\033[0m"
sudo rm /usr/share/applications/firefox.desktop || echo -e "\033[1;31mHATA:\033[0m \033[1;37mFirefox'un masaüstü yapılandırma dosyaları kaldırılırken bir sorun oluştu. Dizine erişiminiz olduğundan ve dosyaların bulunduğundan emin olun.\033[0m"
