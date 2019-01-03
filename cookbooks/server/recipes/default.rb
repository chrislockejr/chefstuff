#
# Cookbook:: server
# Recipe:: default
#
# Copyright:: 2019, Chris Locke, All Rights Reserved.
#
case node['platform']
  when 'centos'
    package "epel-release"
end

package "tree"
