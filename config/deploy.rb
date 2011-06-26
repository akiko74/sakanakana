set :application, "sakana"
set :repository,  "ssh://sakanakana.info:7022/home/a-saito/sakana/.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/var/www/html/public/"
set :use_sudo, false
set :user, "a-saito"
set :port, 7022
set :default_run_options, :pty => true

role :web, "sakanakana.info"      # Your HTTP server, Apache/etc
role :app, "sakanakana.info"      # This may be the same as your `Web` server
role :db,  "sakanakana.info", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

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
