# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.omnibus.chef_version = :latest
  config.vm.box = "chef/centos-7.0"
  config.vm.define :hexo_server do |hexo_server|
    hexo_server.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ['./cookbooks']
      chef.log_level = 'debug'
      chef.add_recipe 'epel_repo'
      chef.add_recipe 'node'
    end
  end
end
