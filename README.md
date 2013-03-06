Description
===========

Installs and configures newrelic for server monitoring.

https://newrelic.com/docs/server/new-relic-for-server-monitoring

Requirements
============

## Platforms

* Debian, Ubuntu

Tested on:

* Debian Wheezy (7.0)

Attributes
==========

## Required

* `node[:newrelic][:license_key]` - license key for server monitoring

## Optional

* `node[:newrelic]["apt-key"]` - newrelic apt-key
* `node[:newrelic][:keyserver]` - address of key server
* `node[:newrelic][:config_file]` - config file
* `node[:newrelic][:log_path]`- path to logs
* `node[:newrelic][:loglevel]` - log level
* `node[:newrelic][:logfile]` - log file
* `node[:newrelic][:proxy]` - address of proxy server
* `node[:newrelic][:ssl]` - turns SSL on/off
* `node[:newrelic][:ssl_ca_bundle]` - CA certificate
* `node[:newrelic][:ssl_ca_path]` - path to CA files
* `node[:newrelic][:pidfile]` - pidfile
* `node[:newrelic][:collector_host]` - address of newrelic's collector
* `node[:newrelic][:timeout]` - connection timeout

Usage
=====

Prepare role newrelic:

```ruby
name "newrelic"
description %q{
  Configures machine to use newrelic server monitoring.
}

run_list(
  "recipe[newrelic]"
)

default_attributes(
 newrelic: {license_key: "your_license_key"}
)
```
and add it to run list.

