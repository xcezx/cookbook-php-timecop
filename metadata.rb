maintainer       "MAEKAWA Tsuyoshi"
maintainer_email "main.xcezx@gmail.com"
license          "All rights reserved"
description      "Installs/Configures php-timecop extension"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

depends "php"
depends "git"
depends "build-essential"

%w{ debian ubuntu centos redhat }.each do |os|
  supports os
end

recipe "php-timecop", "Install timecop extension from source."

attribute "php-timecop/reference",
  :default => "master"
