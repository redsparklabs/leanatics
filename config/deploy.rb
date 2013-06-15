require "rvm/capistrano"
require "bundler/capistrano" 
set :use_sudo, false
set :user, 'altruus'
set :domain, '198.199.106.175'
set :applicationdir, "/home/altruus/www/leanatics/"

set :application, "leanatics"
set :deploy_to, "/home/altruus/www/#{application}"
set :repository,  "ssh://git@github.com/redsparklabs/leanatics.git"
set :scm, :git
set :scm_verbose, true
set :branch, "altruus"

set :deploy_via, :remote_cache

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server "198.199.106.175", :app, :web, :db, :primary => true

after 'deploy:update_code', 'deploy:migrate'

set :keep_releases, 5
after "deploy:restart", "deploy:cleanup" 

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end