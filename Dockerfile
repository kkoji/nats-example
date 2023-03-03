FROM golang:1.20.1-buster
RUN go install github.com/cespare/reflex@latest
COPY reflex.conf /
ENTRYPOINT ["reflex", "-c", "/reflex.conf"]