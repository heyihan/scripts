# install shadowrocks-libev
wget https://copr.fedorainfracloud.org/coprs/librehat/shadowsocks/repo/epel-6/librehat-shadowsocks-epel-6.repo
mv librehat-shadowrocks-epel-6.repo /etc/yum.repos.d/shadowrocks.repo
yum update
yum install shadowrocks-libev

# configure
mkdir ~/shadowrocks
cd ~/shadowrocks
cp /etc/shadowrocks-libev/config.json .
vim config.json

vim /etc/supervisord.conf

#start
supervisorctl start shadowrocks

