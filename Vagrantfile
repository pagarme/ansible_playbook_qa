# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "archlinux" do |archlinux|
    archlinux.vm.box = "archlinux/archlinux"
  end
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/hirsute64"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
end
