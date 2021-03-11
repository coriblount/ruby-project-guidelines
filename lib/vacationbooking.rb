class VacationBooking #runs logic
    prompt = TTY::Prompt.new
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
                @@user = User.find_by(name: login_name)
                login_password = prompt.ask("What is your password?")
                @@user = User.find_by(password: login_password)
                        puts "#{@@user.name.capitalize} your dream vacation is only a few clicks away!"
                    else
                        puts "create account"
                end
            end
#if User.all.include?(login_name) && User.all.find_by(password:login_password)          
end