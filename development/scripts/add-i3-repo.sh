URL_SUR5R_KEYRING="http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb"
CHECKSUM="SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416"
RELEASE_UBUNTU=$(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=)
FILE_SUR5R_LIST="/etc/apt/sources.list.d/sur5r-i3.list"
FILE_KEYRING="/tmp/keyring.deb"

/usr/lib/apt/apt-helper download-file $URL_SUR5R_KEYRING $FILE_KEYRING $CHECKSUM
dpkg -i $FILE_KEYRING
rm $FILE_KEYRING
echo "deb http://debian.sur5r.net/i3/ $RELEASE_UBUNTU universe" >> $FILE_SUR5R_LIST