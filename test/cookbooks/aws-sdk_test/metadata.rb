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

name 'aws-sdk_test'
maintainer 'Copyright (c) 2014 Quad Learning, Inc.'
maintainer_email 'techops@americanhonors.org'
license 'Apache 2.0'
description 'Test cookbook for aws-sdk cookbook'
version '0.1.0'

%w(ubuntu).each do |os|
  supports os
end

depends 'aws-sdk'
