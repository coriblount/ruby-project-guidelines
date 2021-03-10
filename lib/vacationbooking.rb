class VacationBooking #runs logic
    attr_reader :user, :destination, :trip, :sight, :flight

    def run
        welcome
    end

    def welcome
        title = Artii::Base.new(:font => "slant")
        puts "Welcome to:"
        puts title.asciify("Vacation Booking")
    end

end