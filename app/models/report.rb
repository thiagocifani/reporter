class Report < ActiveRecord::Base
  include Redis::Objects

  list :pages

  after_destroy :delete_redis_keys
  def delete_redis_keys
    self.class.redis_objects.each do |key,opts|
      redis.del(redis_field_key(key))
    end
  end
end
