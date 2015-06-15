namenode_id=$(docker ps | grep namenode | awk '{print $1}')
ip_namenode=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $namenode_id)
echo address=/namenode/$ip_namenode >> /opt/dnsmasq.conf
flannel_ip=$(ip -o -4 addr list flannel0 | awk '{print $4}' | cut -d/ -f1)
docker run -ti -d -p $flannel_ip:53:53/udp -v /opt/dnsmasq.conf:/etc/dnsmasq.conf dns-server /usr/sbin/dnsmasq -d
echo "dns-server ip" $flannel_ip
