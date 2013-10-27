include_recipe "jenkins::proxy"
include_recipe "jenkins::server"

%w{ git URLSCM build-publisher gerrit-trigger}.each do |plugin|
  jenkins_cli "install-plugin #{plugin}"
  jenkins_cli "safe-restart"
end