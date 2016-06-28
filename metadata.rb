name 'gradle'
maintainer 'Michael S. Klishin'
maintainer_email 'michael@clojurewerkz.org'
license 'MIT'
description 'Installs Gradle'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
recipe 'gradle::tarball', 'installs gradle from tarball'
version '1.0.2'

depends 'ark', '~> 1.0'
