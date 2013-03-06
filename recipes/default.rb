include_recipe "newrelic::install"

template node[:newrelic][:config_file] do
  source "nrsysmond.cfg.erb"
  owner "root"
  group "newrelic"
  mode "0640"
  notifies :restart, "service[newrelic-sysmond]", :immediately
end

# Changing permissions so logrotate stops whining
directory node[:newrelic][:log_path] do
  mode "0755"
end

service "newrelic-sysmond" do
  supports start: true, stop: true, restart: true, status: true
end

