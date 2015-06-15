namenode_id=$(docker ps | grep namenode | awk '{print $1}')
ip_namenode=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $namenode_id)
echo 'address=/namenode/$i' >> /opt/dnsmasq.conf
flannel_ip=$(ip -o -4 addr list flannel0 | awk '{print $4}' | cut -d/ -f1)
docker run -d -ti -p $flannel_ip:53:53/udp -v /opt/dnsmasq.conf:/etc/dnsmasq.conf dns-server