class VacationBooking #runs logic
    attr_reader :user, :destination, :trip, :sight, :flight
    def run
        welcome 
        login
    end

    def welcome
        title = Artii::Base.new(:font => "slant")
        puts "Welcome to:"
        puts title.asciify("Vacation Booking")
        end
        
        def login
            prompt = TTY::Prompt.new
            question = prompt.select("What would you like to do?", %w(Login CreateAccount Exit))
            if (question == "Login") 
                puts "Hello"
                login_name = prompt.ask("Enter Username") 
                login_password = prompt.ask("What is your password?")
                    if User.all.include?(login_name) 
                        puts "Your dream vacation is only a few clicks away!"
                end
            end
        end

end