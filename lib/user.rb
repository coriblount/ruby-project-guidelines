class User < ActiveRecord::Base
    has_many :flights
    has_many :destinations

    def self.names
        @@all_names = []
        self.all.map{|u| @@all_names << u.name}
        @@all_names
    end

    def self.passwords
        @@all_passwords = []
        self.all.map{|u| @@all_passwords << u.password}
        @@all_passwords
    end
end