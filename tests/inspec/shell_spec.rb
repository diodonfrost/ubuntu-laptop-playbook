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
