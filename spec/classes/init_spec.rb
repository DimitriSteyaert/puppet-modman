require 'spec_helper'

describe 'modman' do
  it { should compile.with_all_deps }
  it { should contain_class('modman') }
  it { should contain_exec('clone-modman').that_requires('Package[git]') }
end
