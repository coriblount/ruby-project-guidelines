class Flights < ActiveRecord::Base
    belongs_to :user
    belongs_to :trip

    def self.names
        @@all_names = []
        self.all.map{|u| @@all_names << u.name}
        @@all_names
    end
    
end