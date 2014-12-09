require 'spec_helper'

describe 'seyren' do

  context 'defaults' do
    ['debian', 'ubuntu'].each do |osfamily|
      let(:facts) {{ :osfamily => osfamily }}
      it { should contain_class('seyren::service') }
      it { should contain_class('seyren::config') }
      it { should contain_class('seyren::package') }
      it { should contain_class('seyren::params') }
    end
  end

end
