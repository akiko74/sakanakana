#$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
require "bundler/capistrano"

set :rvm_ruby_string, 'ruby-1.8.7-p358@sakana'
set :rvm_type, :user
set :application, "sakana"
set :repository,  "git://github.com/akiko74/sakanakana.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/var/www/html/public/"
set :use_sudo, false
set :user, "a-saito"
set :port, 7022
set :default_run_options, :pty => true
#set :rake, "/opt/local/bin/rake"

role :web, "49.212.146.98"      # Your HTTP server, Apache/etc
role :app, "49.212.146.98"      # This may be the same as your `Web` server
role :db,  "49.212.146.98", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :default_environment, {
#  'PATH' => "/home/#{user}/.rvm/gems/ruby-1.8.7-p358/bin:/home/#{user}/.rvm/gems/ruby-1.8.7-p358@sakana/bin:/home/#{user}/.rvm/rubies/ruby-1.8.7-p358/bin:/home/#{user}/.rvm/bin:$PATH",
#'RUBY_VERSION' => 'ruby 1.8.7',
#'GEM_HOME' => "/home/#{user}/.rvm/gems/ruby-1.8.7-p358@sakana",
#'GEM_PATH' => "/home/#{user}/.rvm/gems/ruby-1.8.7-p358@sakana:/home/#{user}/.rvm/gems/ruby-1.8.7-p358@global",

'BUNDLE_PATH' => '/home/a-saito/.rvm/gems/ruby-1.8.7-p358@sakana' # If you are using bundler.
}
#
# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
  namespace :deploy do
    task :start, :roles => :app do
       run "touch #{current_release}/tmp/restart.txt"
    end
    
    task :stop, :roles => :app do
    end
    
    desc "Restart Application"
    task :restart, :roles => :app do
      run "touch #{current_release}/tmp/restart.txt"
    end
  end
