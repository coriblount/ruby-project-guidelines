require 'bundler'
Bundler.require
require 'artii'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
#require_all 'lib'

require_relative '../lib/vacationbooking.rb'
require_relative '../lib/sight.rb'
require_relative '../lib/flight.rb'
require_relative '../lib/user.rb'
require_relative '../lib/destination.rb'
require_relative '../lib/trip.rb'

