require 'spec_helper'

#testing docker service
describe service('docker') do
  it { should be_running }
end

#testing nginx pod is running
describe command('docker ps -q $1 | wc -l') do
  its(:stdout) { should match '1' }
end

#testing port is up   
describe port(80) do
  it { should be_listening }
end

#testing nginx output
describe command('curl localhost:80') do
  its(:stdout) { should match 'Hello World' }
end
