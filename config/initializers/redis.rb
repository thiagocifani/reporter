
if ENV["REDISCLOUD_URL"]
  $redis = Redis.new(:url => ENV["REDISCLOUD_URL"], :driver => :hiredis)
else
  $redis = Redis.new(:url => "redis://localhost:6379", :driver => :hiredis)
end
