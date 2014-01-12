#
# Cookbook Name:: site-citypo3org
# Recipe:: php
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

include_recipe "php"

###################
# PHP code sniffer
###################

php_pear "PHP_CodeSniffer"


###################
# PHP mess detector
###################

php_pear_channel "pear.pdepend.org"
php_pear_channel "pear.phpmd.org"

php_pear "PHP_PMD" do
  channel "phpmd"
  options "--alldeps"
end

##################
# PHP CPD
##################

%w{
pear.phpunit.de
pear.symfony.com
pear.netpirates.net
}.each do |channel|
  php_pear_channel channel
end

php_pear "phpcpd" do
  channel "phpunit"
  options "--alldeps"
end

##################
# Coding standards
##################

php_pear_channel "pear.typo3.org"

%w{ TYPO3SniffPool TYPO3CMS TYPO3Flow }.each do |product|
  php_pear product do
    channel "typo3"
    options "--alldeps"
  end
end
