# add swap to linux
dd if=/dev/zero of=/swapfile bs=1024 count=$1k
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee --append /etc/fstab
chown root:root /swapfile
chmod 0600 /swapfile
