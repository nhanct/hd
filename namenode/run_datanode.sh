docker build -t datanode .
docker run -d -t -i --dns=$1 datanode /etc/bootstrap.sh -bash -datanode
