
if ENV["REDISCLOUD_URL"]
  $redis = Redis.new(:url => ENV["REDISCLOUD_URL"], :driver => :hiredis)
else
  $redis = Redis.new(:url => "redis://192.168.33.12:6379", :driver => :hiredis)
end
