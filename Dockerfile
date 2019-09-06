FROM ubuntu:xenial

ARG SHEEPIT_JAR_URL="https://www.sheepit-renderfarm.com/media/applet/client-latest.php"
ARG BUILD_DATE
ARG BUILD_TAG

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/D3lta/sheepit-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version=$BUILD_TAG \
      org.label-schema.schema-version="1.0.0-rc1"

ENV WORKDIR "/app"
ENV SHEEPIT_JAR_FILENAME "sheepit.jar"
ENV SHEEPIT_USER "D3lta"
ENV SHEEPIT_TOKEN "ZSQko2QvmU7wbaoKZZr1YnPmV6MdCzfTpAImpGRw"
ENV SHEEPIT_CORES "4"
ENV SHEEPIT_CACHE "/tmp"
ENV SHEEPIT_MEM "4G"
ENV SHEEPIT_SERVER "https://client.sheepit-renderfarm.com"

WORKDIR ${WORKDIR}
ADD entrypoint.sh .
RUN chmod +x entrypoint.sh

RUN apt update && \
	apt install -y \
		wget \
		bzip2 \
		libfreetype6 \
		libgl1-mesa-dev \
		libglu1-mesa \
		libxi6 \
		libxrender1 \
		software-properties-common \
		default-jre && \
	apt autoremove -y && \
	apt autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* && \
wget -O ${WORKDIR}/${SHEEPIT_JAR_FILENAME} ${SHEEPIT_JAR_URL} && \
java -jar ${WORKDIR}/${SHEEPIT_JAR_FILENAME} --version

CMD ["/app/entrypoint.sh"]
