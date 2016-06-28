require 'spec_helper'

context 'when all attributes are default' do
  it_behaves_like 'gradle'

  describe file '/usr/local/gradle-2.8' do
    it { is_expected.to be_directory }
  end

  describe file '/usr/local/gradle' do
    it { is_expected.to be_linked_to '/usr/local/gradle-2.8' }
  end

  describe command '/usr/local/gradle/bin/gradle -v' do
    its(:stdout) { is_expected.to match /Gradle 2.8/ }
  end
end
