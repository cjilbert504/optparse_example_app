require "optparse"

options = {}

option_parser = OptionParser.new do |opts|
  opts.on "-u USERNAME", "Introduce yourself" do |username|
    options[:username] = username
  end

  opts.on "--age [AGE]", "Only tell if you really want to" do |age|
    options[:age] = age
  end
end

option_parser.parse!

intro = "Bonjour, je m'appelle #{options[:username]}."
intro << " Je suis #{options[:age]}." if options[:age]

puts
puts intro
puts

