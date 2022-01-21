FROM centos:7

COPY mongodb-org-5.0.repo /tmp/debug/mongodb-org-5.0.repo

RUN \
mv /tmp/debug/mongodb-org-5.0.repo /etc/yum.repos.d/.; \
yum install -y mongodb-org-shell-5.0.5 mongodb-org-tools-5.0.5; \
yum install -y iproute net-tools; \
curl -o /usr/local/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64; \
chmod +x /usr/local/bin/jq; \
yum clean all;