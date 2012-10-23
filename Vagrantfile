Vagrant::Config.run do |config|
  config.vm.box = "centos6"

  # Set networking to bridged
  config.vm.network :bridged
  # Enable the Puppet provisioner
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path  = [ "modules/packages" ]
    puppet.options = [
        '--debug',
        '--verbose',
    ]
  end
end
