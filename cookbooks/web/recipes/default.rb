#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
# Install the nginx package

if node["platform_family"] == "rhel"
  package "epel-release"
end

package "nginx" do
  action :install
end

service "nginx" do
  action [:start, :enable]
end
