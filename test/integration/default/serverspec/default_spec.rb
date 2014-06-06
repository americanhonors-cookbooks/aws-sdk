require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe command('/opt/chef/embedded/bin/gem list aws-sdk') do
  it { should return_stdout(/1\.42\.0/) }
end

describe command('/opt/chef/embedded/bin/gem list unf') do
  it { should return_stdout(/0\.1\.4/) }
end
