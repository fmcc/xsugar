FROM maven:3.6.3-jdk-8-slim

ENV XSUGAR_DIR /opt/xsugar

RUN mkdir $XSUGAR_DIR
COPY . $XSUGAR_DIR
WORKDIR $XSUGAR_DIR

ENV JAVA_TOOL_OPTIONS "-Xmx4G -Dorg.eclipse.jetty.server.Request.maxFormContentSize=-1 -Dfile.encoding=UTF8 -Djetty.port=9999 -Djetty.stopPort=9998 -Djetty.stopKey=xsugar"

EXPOSE 9999

CMD mvn jetty:run
