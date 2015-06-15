#build docker images
docker build -t dns-server .

#create /opt for dns configure

mkdir /opt

#create configure file
cat >> /opt/dnsmasq.conf << EOF
#listen on container interface
listen-address=0.0.0.0
interface=eth0
user=root

#only use these namesservers
no-resolv
server=8.8.4.4
server=8.8.8.8

EOF


