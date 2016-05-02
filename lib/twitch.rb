require_relative "twitch_classes"

# necessary for windows
require "openssl"

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE; nil


puts "Welcome to twitch-cmd app"

page = Page.new()

help = File.open("help").read

while true
    print ">"
    input = gets.chomp
    break if input == 'quit'
    puts help if input == "help"
    puts page.dispatch(input)
end