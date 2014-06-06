#
# Copyright (c) Quad Learning, Inc.
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

require 'spec_helper'

describe 'aws-sdk::default' do
  let(:chef_run) { ChefSpec::Runner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }

  it 'installs the aws-sdk gem' do
    expect(chef_run).to install_chef_gem('aws-sdk').with(version: '1.42.0')
  end

  it 'installs the unf gem' do
    expect(chef_run).to install_chef_gem('unf').with(version: '0.1.4')
  end
end
