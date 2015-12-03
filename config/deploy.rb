SSHKit.config.command_map[:rake] = "bundle exec rake"

set :application, 'reporter'
set :repo_url, 'git@github.com:thiagocifani/reporter.git'

set :deploy_to, '/webapps/reporter'
set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true
set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute "kill -s USR2 `cat /tmp/puma_reporter.pid`"
    end
  end

  after :finishing, 'deploy:cleanup'
end
