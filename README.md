# StatsD Server for Librato

This is an implementation of Etsy's StatsD written in Go that submits data to Librato Metrics.

This was forked from [jcoene/statsd-go](https://github.com/jcoene/statsd-go) Librato server and altered to provide support for percentiles for timers.

# Usage

```
Usage of statsd:
  -address="0.0.0.0:8125": UDP service address
  -debug=false: Enable Debugging
  -flush=30: Flush Interval (seconds)
  -percentiles="": Percentiles to track (eg. "95,99.5")
  -token="": Librato API Token
  -user="": Librato Username
```

## License

MIT License, see LICENSE for details.
