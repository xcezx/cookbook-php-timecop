Description
===========

Installs and configures PHP timecop extension.

Requirements
============

php
git

Platform
--------

* CentOS

Tested on:

* CentOS 6.3

Attributes
==========

* `node['php-timecop']['reference']`


Usage
=====

```
git clone git://github.com/xcezx/cookbook-php-timecop.git /path/to/your-cookbooks/php-timecop
```

and your recipe:

    { "run_list": ["recipe[php-timecop]"] }
