default[:newrelic][:repository] = "http://apt.newrelic.com/debian/"
default[:newrelic]["apt-key"] = "https://download.newrelic.com/548C16BF.gpg"
default[:newrelic][:config_file] = "/etc/newrelic/nrsysmond.cfg"
default[:newrelic][:log_path] = "/var/log/newrelic"

default[:newrelic][:license_key] = "REPLACE_WITH_REAL_KEY"

