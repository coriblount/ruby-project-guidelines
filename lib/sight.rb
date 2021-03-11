class Sights < ActiveRecord::Base
    belongs_to :destination

    def self.names
        @@all_names = []
        self.all.map{|u| @@all_names << u.name}
        @@all_names
    end
end