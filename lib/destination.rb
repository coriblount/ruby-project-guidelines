class Destinations < ActiveRecord::Base
    belongs_to :user
    belongs_to :trip
    has_many :sights

    @@all_names = []
    @@all_reviews = []

    def self.names
        self.all.map{|u| @@all_names << u.name}
        @@all_names
    end

    def self.new_review(rating, user)
        @@all_reviews << "#{user} -> #{rating}"
        puts @@all_reviews
    end
end

