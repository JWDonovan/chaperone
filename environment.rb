ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

CarrierWave.configure do |config|
  config.storage :file
  config.store_dir 'uploads'
end

require_all 'app/uploaders'
require_all 'app'