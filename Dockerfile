FROM centos

ADD ./ /

RUN chmod 777 /go_load.sh
RUN yum -y install wget && yum -y install jq
RUN mkdir /work && mkdir /data

ENTRYPOINT [ "/go_load.sh" ]


