# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder 'v-data', '/vagrant_data', '../data'

  config.vm.define :web do |config|
    config.vm.network :hostonly, '10.1.1.100'

    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path = 'puppet/modules'
      puppet.manifest_file  = 'web.pp'
    end
  end

  config.vm.define :db do |config|
    config.vm.network :hostonly, '10.1.1.200'

    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path = 'puppet/modules'
      puppet.manifest_file  = 'db.pp'
    end
  end
end
