FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

ARG DEBIAN_FRONTEND=noninteractive

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22 3306 80

RUN apt-get update

RUN apt-get install apt-utils curl python2 python-is-python2 nginx redis-server supervisor mysql-server -y

COPY entrypoint.sh /usr/bin/entrypoint

RUN chmod +x /usr/bin/entrypoint

CMD    ["/usr/sbin/sshd", "-D"]

ENTRYPOINT ["/usr/bin/entrypoint"]