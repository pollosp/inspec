describe port(80) do
  it { should be_listening }
end

describe port(443) do
  it { should be_listening }
  its('protocols') {should include 'tcp'}
end

describe user('www') do
  it { should exist }
end

describe service('mysql-server') do
  it { should be_installed }
  it { should be_enabled }
end

describe file('/usr/local/www/apache24/data') do
 it { should be_directory }
 it { should be_executable.by('www') }
end
