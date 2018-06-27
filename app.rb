require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./controllers/games_controller')
require_relative('./controllers/customers_controller')
require_relative('./controllers/rentals_controller')

get '/' do
  erb (:index)
end
