require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use ShoppinglistController
#use GamesController
#use UsersController
#use ShoppinglistgamesController
run ApplicationController
