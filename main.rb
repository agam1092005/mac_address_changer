require 'socket'

def change_add(interface, new_add)
  system("ifconfig #{interface} down")
  system("ifconfig #{interface} hw ether #{new_add}")
  system("ifconfig #{interface} up")
end

puts "Network interface (e.g. eth0): "
interface = gets.chomp

puts "Enter new MAC address: "
new_add = gets.chomp

change_add(interface, new_add)


