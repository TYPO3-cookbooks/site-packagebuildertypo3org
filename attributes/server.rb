node.override[:jenkins][:server][:install_method] = "war"
node.override[:jenkins][:server][:version] = "1.530"
#node.override[:jenkins][:server][:war_checksum] = "2d9289b69e5baba94173625f7b175ede4e39c1c6600ffed74d32b251c5ed8ebb"

#node.override[:jenkins][:http_proxy][:ssl][:enabled] = true

#node.override[:jenkins][:server][:plugins] = [
#  { :name => 'git', :version => '1.5.0'},
#  { :name => 'gerrit-trigger', :version => '2.10.1'},
#]
