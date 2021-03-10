class User < ActiveRecord::Base
has_many :flights
has_many :destinations
end