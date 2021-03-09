require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

require_relative '../app/models/vacationbooking.rb'
require_relative '../app/models/sight.rb'
require_relative '../app/models/flight.rb'
require_relative '../app/models/user.rb'
require_relative '../app/models/destination.rb'
require_relative '../app/models/trip.rb'