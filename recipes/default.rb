#
# Cookbook Name:: php-timecop
# Recipe:: default
#

include_recipe "php"
include_recipe "git"
include_recipe "build-essential"

git "#{Chef::Config[:file_cache_path]}/php-timecop" do
  repository "git://github.com/hnw/php-timecop.git"
  reference node['php-timecop']['reference']
  action :sync
end

execute "phpize" do
  command "phpize"
  cwd "#{Chef::Config[:file_cache_path]}/php-timecop"
end

execute "configure" do
  command "./configure"
  cwd "#{Chef::Config[:file_cache_path]}/php-timecop"
end

execute "make" do
  command "make"
  cwd "#{Chef::Config[:file_cache_path]}/php-timecop"
end

execute "make install" do
  command "make install"
  cwd "#{Chef::Config[:file_cache_path]}/php-timecop"
end

cookbook_file "#{node['php']['ext_conf_dir']}/timecop.ini" do
  source "timecop.ini"
  owner "root"
  group "root"
  mode "0644"
  action :create_if_missing
end
