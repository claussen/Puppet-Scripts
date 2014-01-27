#!/bin/sh
yum  -y install ruby

#install the proper repos
rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm


#install the puppetmaster
yum -y install puppet-server

#install puppet helpers
gem install puppet-lint
gem install rspec-puppet
gem install puppet-catalog-test

yum -y install dos2unix
yum -y install git
