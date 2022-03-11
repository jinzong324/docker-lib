FROM azul/zulu-openjdk-centos:8

WORKDIR /opt/
ARG WAR_NAME="eureka-server.jar"

ADD start.sh /opt/start.sh
ADD ${WAR_NAME} /opt/${WAR_NAME}

RUN sed -i -e "s/<jar_name>/${WAR_NAME}/g" start.sh && chmod +x /opt/start.sh

#ENTRYPOINT ["./start.sh"]
CMD [ "bash", "-c", "./start.sh" ]