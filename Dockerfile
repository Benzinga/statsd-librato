FROM mischief/docker-golang

MAINTAINER Timehop <tech@timehop.com>

RUN go get github.com/timehop/statsd-librato

EXPOSE 8125

ENTRYPOINT ["/root/go/bin/statsd-librato"]
