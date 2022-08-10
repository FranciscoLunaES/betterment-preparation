users = [
    { username: "Paco", password: "Password1"},
    { username: "Luna", password: "Password2"},
]

def auth_user(username, password, list_users)
    list_users.map do |register| 
        if register[:username] == username && register[:password] == password
            return register
        end
    end

    "Try again"
end

puts "Welcome to the authenticator"

25.times {print "-"}
puts
puts "Authentication program"

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    auth = auth_user(username, password, users)

    if auth == "Try again"
        puts auth
    else
        puts auth
    end
    
    puts "Press exit to quit or any other key to continue:"
    input = gets.chomp.downcase
    break if input == "exit"
       
    attempts += 1
end
puts "You exceed" if attempts == 4
