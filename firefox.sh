# FOSS Arşivi tarafından ♥ ile yapıldı.
echo -e "\n\033[1;33mMozilla\033[0m \033[1;36mFirefox\033[0m \033[1;37mYükleyicisi\033[0m"
echo -e "\033[0;36mYapılacak işlemleri seçin:\033[0m\n"
kategori=("Firefox'u yüklemek istiyorum." "Firefox zaten yüklü, ürünü kaldırmak istiyorum." "Yardımcıdan çıkmak istiyorum.")
select fav in "${kategori[@]}"; do
    case $fav in
        "Firefox'u yüklemek istiyorum.")
	    cd source/ && sudo bash ./ffinstall.sh; break;;
        "Firefox zaten yüklü, ürünü kaldırmak istiyorum.")
	cd source/ && sudo bash ./ffuninst.sh; break;;
	"Yardımcıdan çıkmak istiyorum.")
	    echo "Görüşmek üzere"
	    exit
	    ;;
        *) echo Söylediğiniz şey "$REPLY" dizgesi, ancak bunu anlayamadım, lütfen tercihinizi sayılarla belirtin.;;
    esac
done
