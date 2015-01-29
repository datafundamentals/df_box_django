#
# Cookbook Name:: df_box_django
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python"
include_recipe "nginx"

python_virtualenv "/home/vagrant/webapp" do 
	owner "vagrant"
	group "vagrant"
	action :create 
end

python_pip "django" do 
	virtualenv "/home/vagrant/webapp"
end

python_pip "gunicorn" do
	virtualenv "/home/vagrant/webapp"
end

include_recipe "df_postgresql"
