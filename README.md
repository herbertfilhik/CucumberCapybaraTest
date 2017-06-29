CucumberCapybara
================

Writing tests with cucumber and capybara without rake application.
It uses webkit as default driver

Usage
-----

install gems

gem install cucumber

gem install capybara

gem install 'capybara-webkit' (qt is pre-requisite https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)

gem install rspec


For windows users
------------------

Dev kit must be installed (http://rubyinstaller.org/downloads/)

Ruby version must be 1.9.3 (at least on July 22 / 2013 this was true)
- https://github.com/sparklemotion/nokogiri/issues/864#issuecomment-16354269
- http://stackoverflow.com/questions/15123677/how-do-i-resolve-a-cucumber-cant-load-such-file-warning

To use with Internet Explorer (For windows only)
-----------------------------
https://code.google.com/p/selenium/wiki/InternetExplorerDriver
