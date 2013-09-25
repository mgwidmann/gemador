require 'bundler/capistrano'
require 'rvm/capistrano'
require 'capistrano-unicorn'

set :stages, %w(production staging)
set :default_stage, "staging"

require 'capistrano/ext/multistage'

set :application, 'gemador.com'
set :repository,  'git://github.com/mgwidmann/gemador.git'

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, :deployer
set :use_sudo, false
set :deploy_to, "/var/www/#{application}"
#set :deploy_via, :remote_cache
set :default_shell, '/bin/bash -l'
set :rvm_ruby_string, :local
set(:rails_env) { stage }


before 'deploy:setup', 'rvm:install_rvm'
after 'deploy:update_code', 'deploy:migrate'
after 'deploy:restart', 'unicorn:restart'