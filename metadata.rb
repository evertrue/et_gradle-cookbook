name             'gradle'
maintainer       'EverTrue'
maintainer_email 'devops@evertrue.com'
license          'MIT'
description      'Installs Gradle'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.2'

recipe           'gradle::tarball', 'installs gradle from tarball'

depends 'java', '~> 1.39'
depends 'ark', '~> 1.0'
