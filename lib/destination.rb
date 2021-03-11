class Destinations < ActiveRecord::Base
    belongs_to :user
    belongs_to :trip
    has_many :sights

    def self.names
        @@all_names = []
        self.all.map{|u| @@all_names << u.name}
        @@all_names
    end
end

