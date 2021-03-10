require_relative '../config/environment'





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
            if User.include?(login_name)  
        end
    end
end


welcome
login
