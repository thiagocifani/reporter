class Report < ActiveRecord::Base
  include Redis::Objects

  list :pages
end
