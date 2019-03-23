FROM ubuntu:xenial

ARG SHEEP_IT_JAR="https://www.sheepit-renderfarm.com/media/applet/client-latest.php"
ENV WORKDIR "/app"
ENV NAME "sheepit.jar"
ENV USER "D3lta"
ENV PASS "ZSQko2QvmU7wbaoKZZr1YnPmV6MdCzfTpAImpGRw"
ENV cores "4"
ENV cache "/tmp"

WORKDIR /app
ADD entrypoint.sh .
RUN chmod +x entrypoint.sh

RUN apt update && \
	apt install -y \
		wget \
		curl \
		bzip2 \
		libfreetype6 \
		libgl1-mesa-dev \
		libglu1-mesa \
		libxi6 \
		libxrender1 \
		software-properties-common \
		default-jre && \
	apt-get -y autoremove && \
rm -rf /var/lib/apt/lists/* /tmp/* && \
wget -O ${WORKDIR}/${NAME} ${SHEEP_IT_JAR} && \
java -jar ${WORKDIR}/${NAME} --version

CMD ["/app/entrypoint.sh"]
