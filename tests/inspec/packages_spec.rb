# Linux laptop packages

control 'install-01' do
  impact 1.0
  title 'Atom install'
  desc 'Text editor Atom should be installed'
  describe package('atom') do
    it { should be_installed }
  end
end

control 'install-02' do
  impact 1.0
  title 'Discord install'
  desc 'Discord should be installed'
  describe package('discord') do
    it { should be_installed }
  end
end

control 'install-03' do
  impact 1.0
  title 'Docker install'
  desc 'Docker should be installed'
  describe package('docker-ce') do
    it { should be_installed }
  end
  describe file('/usr/local/bin/docker-compose') do
    it { should exist }
    it { should be_executable }
  end
end

control 'install-04' do
  impact 1.0
  title 'GCP sdk install'
  desc 'Google cloud sdk should be installed'
  describe package('google-cloud-sdk') do
    it { should be_installed }
  end
end

control 'install-05' do
  impact 1.0
  title 'Puppet install'
  desc 'Puppet-agent should be installed'
  describe package('puppet-agent') do
    it { should be_installed }
  end
end

control 'install-06' do
  impact 1.0
  title 'Vagrant install'
  desc 'Vagrant should be installed'
  describe package('vagrant') do
    it { should be_installed }
  end
end

control 'install-06' do
  impact 1.0
  title 'Virtualbox install'
  desc 'Virtualbox should be installed'
  describe package('virtualbox') do
    it { should be_installed }
  end
end

control 'install-07' do
  impact 1.0
  title 'Aws cli'
  desc 'Aws-cli should be install'
  describe pip('awscli') do
    it { should be_installed }
  end
end
