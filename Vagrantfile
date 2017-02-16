Vagrant.configure('2') do |config|
  config.ssh.forward_agent = true
  config.vm.box = 'cargomedia/debian-8-amd64-default'

  config.vm.synced_folder '.', '/home/vagrant/'

  config.vm.provider 'virtualbox' do |vb|
    vb.customize ['modifyvm', :id, '--usb', 'on']
    vb.customize ['modifyvm', :id, '--usbxhci', 'on']
    # These settings are valid for a iStorage diskashur DT (https://istorage-uk.com/product/diskashur-dt/)
    vb.customize ['usbfilter', 'add', '0',
                  '--target', :id,
                  '--name', 'diskAshur',
                  '--vendorid', '0x0984',
                  '--productid', '0x0316'
                 ]
  end

  config.librarian_puppet.puppetfile_dir = 'puppet'
  config.librarian_puppet.placeholder_filename = '.gitkeep'
  config.librarian_puppet.resolve_options = {:force => true}
  config.vm.provision 'puppet' do |puppet|
    puppet.environment_path = 'puppet/environments'
    puppet.environment = 'default'
    puppet.module_path = 'puppet/modules'
  end

end
