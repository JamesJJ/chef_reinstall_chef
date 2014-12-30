#
# Recipe:: default
#

_filename = File.join('/tmp',"reinstall_chef_" + File.basename(node['reinstall_chef']['download']))

remote_file _filename do
  mode '0400'
  owner 'root'
  group 'root'
  source node['reinstall_chef']['download']
  action :nothing
end.run_action(:create) unless node['reinstall_chef']['download'].nil?

_execute = (node['reinstall_chef']['download'] == node['reinstall_chef']['execute']) ?
  "bash #{_filename}" : node['reinstall_chef']['execute']

execute _execute do
  command _execute
end unless node['reinstall_chef']['execute'].nil?



