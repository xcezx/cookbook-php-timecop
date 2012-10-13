#
# Cookbook Name:: php-timecop
# Recipe:: default
#

include_recipe "php"
include_recipe "git"
include_recipe "build-essential"

git "/usr/local/src/php-timecop" do
  repository "git://github.com/hnw/php-timecop.git"
  reference "master"
  action :sync
end

execute "phpize" do
  command "phpize"
  cwd "/usr/local/src/php-timecop"
end

execute "configure" do
  command "./configure"
  cwd "/usr/local/src/php-timecop"
end

execute "make" do
  command "make"
  cwd "/usr/local/src/php-timecop"
end

execute "make install" do
  command "make install"
  cwd "/usr/local/src/php-timecop"
end

cookbook_file "/etc/php5/conf.d/timecop.ini" do
  source "timecop.ini"
  action :create_if_missing
end
