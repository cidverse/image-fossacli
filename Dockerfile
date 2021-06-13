# Base
FROM alpine:latest

ENV VERSION "2.7.2"

# Update Deps
RUN apk add --no-cache curl &&\
	curl -H 'Cache-Control: no-cache' -L -o /tmp/fossa.zip https://github.com/fossas/spectrometer/releases/download/v${VERSION}/fossa_${VERSION}_linux_amd64.zip &&\
	unzip /tmp/fossa.zip -d /tmp &&\
	cp /tmp/fossa /usr/local/bin/fossa &&\
	chmod +x /usr/local/bin/fossa &&\
	rm -rf /tmp/*
