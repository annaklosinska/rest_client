require 'rest_client'

print "Search: "
query = gets.chomp.split.join("+")

response = RestClient.get "https://www.google.pl/?gws_rd=ssl#newwindow=1&q=" + query
puts response.code
puts "---------------"
puts response.cookies
puts "---------------"
puts response.headers
puts "---------------"
puts response.to_str
