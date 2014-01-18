#
# Cookbook Name:: site-citypo3org
# Recipe:: sonar
#
# Copyright 2014, TYPO3 Association
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "sonar::default"
include_recipe "sonar::proxy_nginx"

include_recipe "t3-mysql::server"
include_recipe "sonar::database_mysql"

#####################
# Plugins
#####################

# there are two different types of URL (the /#{name}/ in between for the first block)
{
  "php"          => "1.0",
  "scm-activity" => "1.3",
}.each do |name, version|
  sonar_plugin "sonar-#{name}-plugin" do
    version version
    url "http://repository.codehaus.org/org/codehaus/sonar-plugins/#{name}/sonar-#{name}-plugin/#{version}/sonar-#{name}-plugin-#{version}.jar"
  end
end

{
  "motion-chart" => "1.3",
  "timeline"     => "1.2",
  "xml"          => "0.2",
  "javascript"   => "0.4",
  "tab-metrics"  => "1.0.1",
  "web"          => "1.1",
}.each do |name, version|
  sonar_plugin "sonar-#{name}-plugin" do
    version version
    url "http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-#{name}-plugin/#{version}/sonar-#{name}-plugin-#{version}.jar"
  end
end
