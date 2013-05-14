require 'spec_helper'

describe 'tmux', :type => 'class' do
  context "On a Debian OS with no package name specified" do
    let :facts do
      { :osfamily => 'Debian' }
    end
    it { should contain_package 'tmux' }
    it { should contain_file '/etc/tmux.conf' }
  end
end
