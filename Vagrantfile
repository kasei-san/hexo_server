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
      chef.cookbooks_path = './cookbooks'
      chef.log_level = 'debug'
      chef.add_recipe 'git'
      chef.add_recipe 'jst'
      chef.add_recipe 'epel_repo'
      chef.add_recipe 'node'
      chef.add_recipe 'hexo'
    end
  end
  config.cache.scope = :box if Vagrant.has_plugin?("vagrant-cachier")

  config.vm.synced_folder 'myblog', '/var/www/myblog',
    create: true

  config.vm.synced_folder 'source', '/var/www/source',
    create: true,
    type: 'rsync'

  config.vm.network :private_network, ip: "192.168.33.10"
  config.ssh.forward_agent = true
end
