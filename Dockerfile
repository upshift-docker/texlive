FROM alpine:3.9

LABEL maintainer="docker@upshift.fr"

RUN set -eux; \
	# install needed packages
	apk add --no-cache \
		bash \
		texlive \
	; \
	# create user
	adduser -D -h /work -s /bin/bash tex

VOLUME /work

WORKDIR /work

CMD ["/bin/su","-","tex"]
