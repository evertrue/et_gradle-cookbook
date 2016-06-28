# et_gradle Chef cookbook

This is a Chef cookbook for [Gradle](http://gradle.org), a modern build tool.

It uses official releases from gradle.org to install Gradle under `/usr/local/gradle`, symlinking the binary to `/usr/local/bin`.

This cookbook is released under the MIT license. Feel free to redistribute, use in commercial projects and modify to fit your needs.

## Recipes

* `gradle::default`

## Attributes

* `node['gradle']['version']` (default: `2.14`): Gradle version to install
* `node['gradle']['home_dir']` (default: `/usr/local/gradle`): directory to install Gradle to

## Dependencies

Tested and used with OpenJDK 8, Oracle JDK 8, OpenJDK 7, OpenJDK 6.

## Copyright & License

Michael S. Klishin, 2012-2015
EverTrue, Inc., 2016

Released under the [MIT license](http://www.opensource.org/licenses/mit-license.php).
