# statsd-librato
================

This is a golang based StatsD Server for Librato

This was forked from [timehop/statsd-librato](https://github.com/timehop/statsd-librato) which provides support for percentiles and timers and backport-merged with the project it was forked from, [jcoene/statsd-librato](https://github.com/jcocene/statsd-librato),  which was itself forked from [jbuchbinder/statsd-go](https://github.com/jbuchbinder/statsd-go) and altered to provide support for Librato as a submission backend.

# Usage

Run the container with suitable variables and/or commandline arguments (the ENTRYPOINT for this container is the statsd-librato runtime):

    sudo docker run -p 8125:8125/udp -e LIBRATO_USER=username@example.com -e LIBRATO_TOKEN=ABCD1234 -e LIBRATO_SOURCE=dev ianblenke/statsd-librato -flush=60
	    
You can test that everything is working with a simple echo to nc:

     echo "metric.test.success:1|c" | nc -w 1 -u 127.0.0.1 8125

And you should see the below spit out from your docker container if it is running in the foreground (within 60 seconds):

     [info]  (statsd-librato) 1 measurements sent

# Parameters

The statsd-librato runtime takes a number of parameters.

    Usage of statsd:
      -address="0.0.0.0:8125": udp listen address
      -debug=false: enable logging of inputs and submissions
      -flush=60: interval at which data is sent to librato (in seconds)
      -percentiles="": comma separated list of percentiles to calculate for timers (eg. "95,99.5")
      -source="": librato api source (LIBRATO_SOURCE)
      -token="": librato api token (LIBRATO_TOKEN)
      -user="": librato api username (LIBRATO_USER)

# Installation

**From Source:**

Build the docker container image with:

    sudo docker build -t yourname/statsd-librato .

Alternatively, build the go binary using `make build`

**From Binary:**

Binary releases for the upstream version from which this project was forked are available for linux/amd64 and darwin/amd64. See the [releases page](https://github.com/jcoene/statsd-librato/releases) for the latest downloads.

**With Chef:**

There's a cookbook! See [statsd-librato-cookbook](https://github.com/jcoene/statsd-librato-cookbook).

# License

MIT License, see LICENSE for details.
