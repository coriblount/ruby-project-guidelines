class VacationBooking #runs logic
    @@prompt = TTY::Prompt.new

    def annoying_advertisements
        advertisement = Artii::Base.new(:font => "slant")
        puts advertisement.asciify("Advertisement Time")

        ad = rand(1..5)
        if ad == 2
            ad2
        elsif ad == 3
            ad3
        elsif ad == 4
            ad4
        elsif ad == 5
            ad5
        end
    end

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
        choice = @@prompt.select("What would you like to do?", ["Login", "Create Account", "Exit"])
        puts choice
        if choice == "Login"
            login_name = @@prompt.ask("Enter Username")
            if User.names.include?(login_name)
                login_password = @@prompt.ask("What is your password?")
                if User.passwords.include?(login_password) 
                    puts "Login successful... \nYour dream vacation is only a few clicks away!"
                    main_menu
                else
                    puts "Login failed... \nYour Username or Password is incorrect."
                end
            end
        end
        if choice == "Create Account"
            new_username = @@prompt.ask("Enter New Username")
            new_password = @@prompt.ask("Enter New Password")
            User.create(name: new_username, password: new_password)
            puts "Account created successfully... returning to login menu..."
            sleep(5)
            login
        end
        if choice == "Exit"
            system "clear"
            puts "Thank you for using the Vacation Booking app..."
            sleep(3)
            system "clear"
        end
    end

    def main_menu
        ad_chance = rand(1..3)
        choice = @@prompt.select("What would you like to do?", ["View destinations", "View flights", "View sights", "Sign out"])
        puts choice
        if choice == "View destinations"
            annoying_advertisements if ad_chance == 2
            destinations
        elsif choice == "View flights"
            annoying_advertisements if ad_chance == 2
            flights
        elsif choice == "View sights"
            annoying_advertisements if ad_chance == 2
            sights
        elsif choice == "Sign out"
            annoying_advertisements
            sign_out
        end
    end

    def destinations
        puts "1"
        choice = @@prompt.select("Choose your destination.") do |menu|
            menu.choice "Paris, France"
            menu.choice "Maui, Hawaii"
            menu.choice "Kemah, Texas"
            menu.choice "Rome, Italy"
        end
        puts choice
        flights(choice)
    end

    def flights(destination)
        choice = @@prompt.select("Please select a flight.", ["#{Flights.names[0]}", "#{Flights.names[1]}", "#{Flights.names[2]}", "#{Flights.names[3]}", "#{Flights.names[4]}"])
        sights(destination, choice)
    end

    def sights(destination, flight)
        if destination == "Paris, France"
            puts "Visit the #{Sights.names[0]} in #{destination}, with #{flight}" 
        elsif destination == "Maui, Hawaii"
            puts "Visit the #{Sights.names[1]} in #{destination}, with #{flight}" 
        elsif destination == "Kemah, Texas"
            puts "Visit the #{Sights.names[2]} in #{destination}, with #{flight}" 
        elsif destination == "Rome, Italy"
            puts "Visit the #{Sights.names[3]} in #{destination}, with #{flight}" 
        end
        puts "Thanks for visiting our app! We hope you enjoy your vacation" 
        sleep(5)
        system "clear"
        review
    end

    # Allows user to leave a review after booking a trip.
    def review
        choice = @@prompt.select("Leave a review?", ["Create review", "Exit"])
        if choice == "Create review"
            review_name = @@prompt.ask("Enter Reviewer Name")
            rating = @@prompt.select("Rate 1-5", ["1", "2", "3", "4", "5"])
            Destinations.new_review(rating, review_name)
            puts "Thank you for your review!"
            sleep(5)
            system "clear"
        elsif choice == "Exit"

        end
    end

    # Clears the terminal. Shows user an ad. Sends user back to login.
    def sign_out
        system "clear"
        puts "You have successfully signed out... \nReturning to the login screen..."
        sleep(5)
        system "clear"
        welcome
        login
    end

    # Ad methods

    def ad2
        system "clear"
        puts "              )  (
            (   ) )
             ) ( (
           _______)_
        .-'---------|  
       ( C|/////////|
        '-./////////|
          '_________'
           '-------' "
        puts "Ya thirsty partner!?!?!?!?!?!? \nHead on down to Cori and Shane's Coffeeshop now! \nThe follow ad was brought to you by Cori and Shane's Coffeeshop..."
        play_ad(1)
        sleep(6)
        system "clear"
    end

    def ad3
        system "clear"
        puts "         _
        | |
        |_|
        |_|    | | |
      .-'''------.----.
      |          U    |
      |               |
      | ====o======== |
      | ============= |
      |               |
      |_______________|
      | _____________ |
      ||   Welcome   ||
      ||             ||
      ||_____________||
      |__.---'''---.__|
      |---------------|
      |[Yes][(|)][ No]|
      | ___  ___  ___ |
      |[<-'][CLR][.->]|
      | ___  ___  ___ |
      |[1__][2__][3__]|
      | ___  ___  ___ |
      |[4__][5__][6__]|
      | ___  ___  ___ |
      |[7__][8__][9__]|
      | ___  ___  ___ |
      |[*__][0__][#__]|
      `--------------'
      {__|""|_______'-
      `---------------'"
      puts "You got games on yo phone? \nCall up Cori and Shane's Mobileshop to talk about these amazing prices!!! \nThis ad was brought to you by Cori and Shane's Mobilshop."
      play_ad(1)
      sleep(6)
      system "clear"
    end

    def ad4
        system "clear"
        gamestop = Artii::Base.new(:font => "slant")
        puts gamestop.asciify("Gamestop")
        puts "WE DON'T HAVE THE PS5 IN STOCK YET PLEASE STOP CALLING US. \nHead on down to Cori and Shane's ripoff Gamestop for the worst prices imaginable. \nThis ad was brought to you by Cori and Shane's ripoff Gamestop."
        play_ad(1)
        sleep(6)
        system "clear"
    end

    def ad5
        system "clear"
        congrats = Artii::Base.new(:font => "slant")
        puts congrats.asciify("Congratulations")
        puts "You have been selected as our new winner! \nYou get to view more advertisements for free!!! \nEnjoy =)"
        play_ad(1)
        sleep(5)
        annoying_advertisements
    end
end