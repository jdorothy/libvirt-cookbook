case node['platform_family']
when "rhel"
  packages = %w( libvirt libvirt-devel )
when "debian"
  packages = %w( libvirt-bin libvirt-dev )
end
packages.each do |name|
  package name do
    action :nothing
  end.run_action(:install)
end

chef_gem 'ruby-libvirt' do
  action :install
end

$LOAD_PATH.delete("/usr/bin/../lib") # scumbag LOAD_PATH: https://github.com/opscode/chef/blob/master/bin/chef-solo#L22
require 'libvirt'
