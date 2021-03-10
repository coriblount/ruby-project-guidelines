require_relative '../config/environment'





def welcome
title = Artii::Base.new(:font => "slant")
puts "Welcome to:"
puts title.asciify("Vacation Booking")
end


#Ascii.process("Welcome")
#

welcome