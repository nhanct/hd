FROM centos:6
RUN yum update -y
RUN yum install -y dnsmasq
RUN echo user=root >> /etc/dnsmasq.conf
RUN chkconfig dnsmasq on
RUN service dnsmasq start