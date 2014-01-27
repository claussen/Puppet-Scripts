#!/bin/sh

# Let's install some tools that we will need
yum -y install dos2unix git wget ruby

#install the proper repos
rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm

#install the puppetmaster
yum -y install puppet-server

#install puppet helpers
gem install puppet-lint
gem install rspec-puppet
# We don't want to use this one, since it will 'gem install puppet'
#gem install puppet-catalog-test
mkdir ~/github && cd ~/github && git clone https://github.com/claussen/puppet-catalog-test.git  
#clone Mike’s version
cd ~/github/puppet-catalog-test && gem install ~/github/puppet-catalog-test-0.3.1.gem 

