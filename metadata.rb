name 'visualstudio2017'
maintainer '2018 SYF All Rights Reserved'
maintainer_email 'hisao07@users.noreply.github.com'
issues_url 'https://github.com/hisao07/visualstudio2017/issues'
source_url 'https://github.com/hisao07/visualstudio2017'
license 'Apache-2.0'
description 'Installs/Configures visualstudio2017'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.5'
chef_version '>= 12.1', '~> 12.2' if respond_to?(:chef_version)
supports 'windows'
depends 'windows', '~> 2'
