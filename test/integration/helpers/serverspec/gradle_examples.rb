require_relative 'spec_helper'

shared_examples_for 'gradle' do
  describe file '/usr/local/gradle/bin/gradle' do
    it { is_expected.to be_executable }
  end

  describe file '/etc/profile.d/gradle.sh' do
    it { is_expected.to be_file }
    it { is_expected.to be_readable.by 'others' }
  end
end
