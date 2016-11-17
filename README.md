# How to Setup

* Do this before anything else:
  * Install Homebrew for OSX: (http://brew.sh/index_pt-br.html)
  * 'brew update' on terminal

* Ruby version - ruby 2.3.0p0 
  * 'brew install ruby' on terminal
  * Check the version you have installed in your pc running the command 'ruby -v' on terminal

* Rails version - rails 5.0.0.1 
  * 'gem install rails' on terminal
  * Check the version you have installed in your pc running the command 'rails -v' on terminal

## We'll use postgresDb in this project, so you must have it up and running on your machine! Follow this:

  * Postgres version - 9.6.1   
    * With homebrew just run 'brew install postgres'

    * If this is your first install, create a database with:
      * initdb /usr/local/var/postgres

    * If this is your first install, automatically load on login with:
      * mkdir -p ~/Library/LaunchAgents
      * cp /usr/local/Cellar/postgresql/9.6.1/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/
      * launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

    * If this is an upgrade and you already have the homebrew.mxcl.postgresql.plist loaded:
      * launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
      * cp /usr/local/Cellar/postgresql/9.6.1/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/
      * launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
         
    * Install Lunchy using 'gem install lunchy'
      * Without lunchy you would use to start postgres server: 
        * 'launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
      * Using lunchy the command is just:
        * 'lunchy start postgres'
        * Use 'lunchy stop postgres' to stop server



      
      

