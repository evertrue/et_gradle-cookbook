name             'et_gradle'
maintainer       'EverTrue'
maintainer_email 'devops@evertrue.com'
license          'MIT'
description      'Installs Gradle'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe           'gradle::tarball', 'installs gradle from tarball'

supports 'ubuntu', '= 14.04'
supports 'centos', '= 7.2'

depends 'java', '~> 1.39'
depends 'ark', '~> 1.0'
