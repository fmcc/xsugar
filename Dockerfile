FROM openjdk:6b38-jre-slim

COPY 
JAVA_TOOL_OPTIONS="-Xmx4G -Dorg.eclipse.jetty.server.Request.maxFormContentSize=-1 -Dfile.encoding=UTF8 -Djetty.port=9999 -Djetty.stopPort=9998 -Djetty.stopKey=xsugar" ~/source/apache-maven-3.0.3/bin/mvn jetty:run &

JAVA_TOOL_OPTIONS="-Xmx4G -Dorg.eclipse.jetty.server.Request.maxFormContentSize=-1 -Dfile.encoding=UTF8 -Djetty.port=9999 -Djetty.stopPort=9998 -Djetty.stopKey=xsugar" ~/source/apache-maven-3.0.3/bin/mvn jetty:stop
