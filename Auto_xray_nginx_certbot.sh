# 更新软件包列表
apt update
# 安装Xray-core
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
# 覆盖Xray-core配置
vim /usr/local/etc/xray/config.json
# 安装certbot和nginx
apt install certbot
apt install nginx
# certbot申请证书
certbot certonly
# 覆盖nginx配置
vim /etc/nginx/conf.d/v2ray.conf
# 替换配置中的域名
echo -n "新域名："
read newDomain
sed -i "s/example.com/$newDomain/g" /etc/nginx/conf.d/v2ray.conf