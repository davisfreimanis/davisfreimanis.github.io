FROM golang:latest

WORKDIR /go/src/app

# Download and install hugo
ENV HUGO_VERSION 0.39
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb


ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb \
	&& rm /tmp/hugo.deb

EXPOSE 1313

CMD hugo server -w