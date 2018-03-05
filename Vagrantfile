# -*- mode: ruby -*-
# vi: set ft=ruby :

# https://docs.vagrantup.com
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64" # https://cloud-images.ubuntu.com

  config.vm.network "forwarded_port", guest: 8888, host: 8888

  config.vm.provision "shell", path: "install.sh", privileged: false
end
