require 'spec_helper'

context 'when node[et_gradle][version] = 2.6' do
  it_behaves_like 'gradle'

  describe file '/usr/local/gradle-2.6' do
    it { is_expected.to be_directory }
  end

  describe file '/usr/local/gradle' do
    it { is_expected.to be_linked_to '/usr/local/gradle-2.6' }
  end

  describe command '/usr/local/gradle/bin/gradle -v' do
    its(:stdout) { is_expected.to match /Gradle 2.6/ }
  end
end
