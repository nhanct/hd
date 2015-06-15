docker build -t namenode .
docker run -d -t -i --namenode -h namenode namenode /etc/bootstrap.sh -bash -namenode

