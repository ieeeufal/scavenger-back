# README

* Do this before anything else:
  * Install Homebrew for OSX: (http://brew.sh/index_pt-br.html)
  * 'brew update' on terminal

* Ruby version - ruby 2.3.0p0 
  * 'brew install ruby' on terminal
  * Check the version you have installed in your pc running the command 'ruby -v' on terminal

* Rails version - rails 5.0.0.1 
  * 'gem install rails' on terminal
  * Check the version you have installed in your pc running the command 'rails -v' on terminal

* We'll use postgresDb in this project, so you must have it up and running on your machine! Follow this:

  * Postgres version - 9.6.1
    * 'brew install postgres' on terminal
    * You need to create a db using the following command: 'initdb /usr/local/var/postgres -E utf8'
      * if it doesn't work, change the path to another directory)
  * Setting up Postgresql for ruby on rails development on osx:
    * https://blog.willj.net/2011/05/31/setting-up-postgresql-for-ruby-on-rails-development-on-os-x/
