FROM mischief/docker-golang

MAINTAINER Timehop <tech@timehop.com>

RUN go get github.com/timehop/statsd-librato

ENTRYPOINT ["/root/go/bin/statsd-librato"]
