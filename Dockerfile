FROM metabase/metabase:v0.36.4

RUN apk update && \
    apk add zip && \
    cd /root && \
    unzip /app/metabase.jar log4j.properties && \
    echo 'log4j.appender.console.layout.ConversionPattern=%d{MM-dd HH:mm:ss} %p %c{2} :: %m%n' >> log4j.properties && \
    zip -u /app/metabase.jar log4j.properties && \
    rm log4j.properties
