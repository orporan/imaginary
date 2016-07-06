# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM h2non/imaginary
MAINTAINER or@crazylister.com
ENV IMAGINARY_ARGS
CMD /go/bin/imaginary $IMAGINARY_ARGS
