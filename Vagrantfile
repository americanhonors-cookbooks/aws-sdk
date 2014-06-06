# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Copyright (c) 2014 Quad Learning, Inc.
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

Vagrant.require_plugin 'vagrant-berkshelf'
Vagrant.require_plugin 'vagrant-omnibus'

Vagrant.configure('2') do |config|
  config.vm.hostname = 'aws-sdk-cookbook'

  config.vm.box = 'opscode_ubuntu-14.04_provisionerless'
  config.vm.box_url = 'https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-14.04_provisionerless.box'

  config.vm.network :private_network, ip: '33.33.33.10'

  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.run_list = %w(recipe[aws-sdk])
  end
end
