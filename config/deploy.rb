set :application, "gemador.com"
set :repository,  "git://github.com/mgwidmann/gemador.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, :deployer
set :use_sudo, false
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache

role :web, "192.81.210.122"                          # Your HTTP server, Apache/etc
role :app, "192.81.210.122"                          # This may be the same as your `Web` server
role :db,  "192.81.210.122", :primary => true # This is where Rails migrations will run