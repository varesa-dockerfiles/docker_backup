FROM centos

ADD docker.repo /etc/yum.repos.d/docker.repo

RUN yum update -y
RUN yum install -y docker-engine git rsync

ADD dockerbackup.sh /dockerbackup.sh


CMD /dockerbackup.sh

