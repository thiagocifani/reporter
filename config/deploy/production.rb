set :stage, :production
set :rails_env, "production"

server '10.11.12.13', user: 'deploy', roles: %w{web app db}
