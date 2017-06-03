require "sidekiq"

class BaseJob
  include Sidekiq::Worker
end
