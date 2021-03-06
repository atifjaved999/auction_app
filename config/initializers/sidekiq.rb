require 'sidekiq'
require 'sidekiq/web'
# require 'sidekiq/cron/web'
redis_sidekiq_url = "redis://localhost:6379"

Sidekiq.configure_server do |config|
  config.redis = { url: redis_sidekiq_url }

  schedule_file = "config/schedule.yml"
  if File.exist?(schedule_file)# && Sidekiq.server?
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_sidekiq_url }
end
