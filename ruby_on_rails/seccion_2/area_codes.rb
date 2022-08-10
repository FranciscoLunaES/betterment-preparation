dial_book = {
    "colima" => "312",
    "manzanillo" => "314",
    "armeria"=> "313",
    "tecoman" => "315"
}

def get_city_names(dial_book)
    # dial_book.each {|key, value| puts key }
    dial_book.keys
end

def get_area_code(dial_book, city)
    return dial_book[city]
end

loop do
    puts "Do you want to lookup an area code based on city name? (Y/N)"
    answer = gets.chomp.downcase

    break if answer != "y"

    puts "which city do you want the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
        city = gets.chomp.downcase

    if dial_book.include?(city)
        puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
    else
        puts "You entered a invalid city name"
    end
    
end
