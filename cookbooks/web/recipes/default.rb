#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
# Install the apache package

if node['platform_family'] == "rhel"
  package = "httpd"
elsif node['platform_family'] == "debian"
  package = "apache2"
end

package 'apache2' do
  package_name package
  action :install
end

service 'apache2' do
  service_name package
  action [:start, :enable]
end
