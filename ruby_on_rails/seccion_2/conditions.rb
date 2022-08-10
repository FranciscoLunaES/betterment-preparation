if !true
    puts "Chi"
else
    puts "no"
end


condition = true
another = false
if condition && another
    puts "Chi x2"
else
    puts "no x2"
end

if condition || another
    puts "Chi x3"
else
    puts "no x3"
end

name = "Paco"
if name = "Paco"
    puts "Ven" + name
elsif name == "Jack"
    puts "Ven" + name
else
    puts "Go away"
end