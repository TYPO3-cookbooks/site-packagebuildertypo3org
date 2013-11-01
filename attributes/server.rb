node.override[:jenkins][:server][:install_method] = "war"
node.override[:jenkins][:server][:version] = "1.537"
node.override[:jenkins][:server][:war_checksum] = "411973e8196a61445eb4ef8284975ef4be638738aa806e39fc7bdb08c6d5c261"

#node.override[:jenkins][:http_proxy][:ssl][:enabled] = true

#node.override[:jenkins][:server][:plugins] = [
#  { :name => 'git', :version => '1.5.0'},
#  { :name => 'gerrit-trigger', :version => '2.10.1'},
#]
