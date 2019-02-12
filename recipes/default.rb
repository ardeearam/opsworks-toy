#
# Cookbook:: balsam
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#
apt_update "update"

apt_package %w(nodejs python3 ruby)

file "/tmp/hello.txt" do
  content "Hello, this is my first cookbook recipe\n"
  action :create
end

execute "hello_message" do
  command "ls -l > /tmp/directory.txt"
end

