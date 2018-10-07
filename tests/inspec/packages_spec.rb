# Linux laptop packages

control 'install-01' do
  impact 1.0
  title 'Atom install'
  desc 'Text editor Atom should be installed'
  describe package('atom') do
    it { should be_installed }
  end
end
