############
# Proxy
############
ssl_certificate "wildcard.typo3.org" do
  ca_bundle_combined true
end

include_recipe "jenkins::proxy"


############
# Jenkins
############
include_recipe "jenkins::server"
# go for LTS
resources("apt_repository[jenkins]").uri 'http://pkg.jenkins-ci.org/debian-stable' if node[:platform_family].eql?("debian") && node[:jenkins][:server][:install_method].eql?("package")
