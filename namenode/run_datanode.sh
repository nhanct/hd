docker build -t datanode .
docker run -d -t -i --datanode --dns=$1 datanode /etc/bootstrap.sh -bash -datanode