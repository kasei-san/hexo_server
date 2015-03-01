require 'spec_helper'

describe package 'nodejs' do
  it { should be_installed.with_version('0.10') }
end

describe package 'npm' do
  it { should be_installed.with_version('1.3.6') }
end

describe package 'hexo' do
  it { should be_installed.by('npm').with_version('2.8.3') }
end
