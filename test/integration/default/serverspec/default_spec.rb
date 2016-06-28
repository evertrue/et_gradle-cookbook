require 'spec_helper'

context 'when all attributes are default' do
  describe file '/usr/local/gradle-2.14' do
    it { is_expected.to be_directory }
  end

  describe file '/usr/local/gradle' do
    it { is_expected.to be_linked_to '/usr/local/gradle-2.14' }
  end

  describe file '/usr/local/bin/gradle' do
    it { is_expected.to be_linked_to '/usr/local/gradle-2.14/bin/gradle' }
  end

  describe command '/usr/local/bin/gradle -v' do
    its(:stdout) { is_expected.to match /Gradle 2.14/ }
  end
end
