# frozen_string_literal: true

require './environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

use UsersController
use DestinationsController
run ApplicationController
