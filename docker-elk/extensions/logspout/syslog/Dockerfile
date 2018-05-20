FROM centos

RUN yum update -y && yum install -y rsyslog && \
    sed -i 's/#$ModLoad imudp/$ModLoad imudp/g' /etc/rsyslog.conf && \
    sed -i 's/#$UDPServerRun 514/$UDPServerRun 514/g' /etc/rsyslog.conf

CMD [ "rsyslogd", "-n", "-f", "/etc/rsyslog.conf" ]