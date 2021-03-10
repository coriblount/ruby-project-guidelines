class Trips < ActiveRecord::Base
    has_many :users
    has_many :destinations
    has_many :flights
end