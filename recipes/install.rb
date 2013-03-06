execute "add newrelic apt-key" do
  command "apt-key adv --keyserver #{node[:newrelic][:keyserver]} --recv-keys #{node[:newrelic]["apt-key"]}"
  not_if { IO.popen("apt-key list").read.include?(node[:newrelic]["apt-key"]) }
end

cookbook_file "/etc/apt/sources.list.d/newrelic.list" do
  source "newrelic.list"
  mode "0644"
  notifies :run, "execute[apt-get update]", :immediately
end

execute "apt-get update" do
  action :nothing
  command %Q{apt-get update}
end

package "newrelic-sysmond"

