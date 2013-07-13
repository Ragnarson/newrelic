apt_repository "newrelic" do
  uri node[:newrelic][:repository]
  distribution "newrelic"
  components ["non-free"]
  key node[:newrelic]["apt-key"]
  keyserver node[:newrelic][:keyserver]
end

package "newrelic-sysmond"

