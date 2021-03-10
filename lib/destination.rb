class Destinations < ActiveRecord::Base
    belongs_to :user
    belongs_to :trip
    has_many :sights
end

