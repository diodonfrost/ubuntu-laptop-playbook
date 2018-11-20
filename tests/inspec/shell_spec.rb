# User shell

home_user = os_env('HOME').content

control 'shell-01' do
  impact 1.0
  title 'Zsh install'
  desc 'Zsh should be install'
  describe package('zsh') do
    it { should be_installed }
  end
end

control 'shell-02' do
  impact 1.0
  title 'oh-my-zsh install'
  desc 'oh-my-zsh should be present'
  describe file('/root/.oh-my-zsh') do
    it { should exist }
    it { should be_directory }
  end
end

control 'shell-03' do
  impact 1.0
  title 'oh-my-zsh setup'
  desc 'oh-my-zsh should be setup'
  describe file('/root/.zshrc') do
    it { should exist }
    its('content') { should include 'export ZSH=$HOME/.oh-my-zsh' }
  end
end
